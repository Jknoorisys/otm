<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class Welcome extends CI_Controller {		
		public function __construct()
		{
			parent::__construct();
			$this->load->model('user_model');
		}

		public function login_user()
		{
			if($this->session->userdata('isLogin') ==1 && $this->session->userdata('isManager') == 0 && $this->session->userdata('isAdmin') == 0){
				redirect(base_url('user-dashboard'));
			}elseif($this->session->userdata('isLogin') == 1 && $this->session->userdata('isManager') ==1 && $this->session->userdata('isAdmin') ==0){
				redirect(base_url('manager-dashboard'));
			}elseif($this->session->userdata('isLogin') == 1 && $this->session->userdata('isManager') == 1 && $this->session->userdata('isAdmin') ==1 ){
				redirect(base_url('admin-dashboard'));
			}
			$this->load->view('login');
		}

		public function confirm_login(){
			$email = $this->input->post('email');
			$pass = $this->input->post('pass');
			if($email && $pass){
				$user = $this->user_model->login($email, $pass);
				if($user && $user!= null){
					$this->session->set_userdata([
						"isLogin"=>'1',
						"isManager"=>($user['users_group_id']== 1 || $user['users_group_id']==4 || $user['users_group_id']==13 || $email == "hr@noorisys.com" || $email == "abrar@fasterchecks.org") ? "1" : "0",
						"isAdmin"=> $user['users_group_id']== 1 ? "1" : "0",
						'id' => $user['id'],
						'users_group_id' => ($email == "hr@noorisys.com" || $email == 'abrar@fasterchecks.org') ? "4" : $user['users_group_id'],
						'tl_id' => $user['tl_id'],
						'name' => $user['name'],
						'photo' => $user['photo'],
						'email' => $user['email'],
						'culture' => $user['culture'],
						'pass' => $user['pass'],
						'active' => $user['active'],
						'skin' => $user['skin'],
						'hashed_pass' => $user['hashed_pass']
					]);

					redirect(base_url('login'));
				}else { 
					$this->session->set_tempdata('login', 'LoginFailed', 2);
					redirect(base_url()); 
				}
			}
		}

		public function logout(){
			$this->session->set_userdata([
				"isLogin"=>null,
				"isManager"=>null,
				"isAdmin"=>null,
				'id' => null,
				'users_group_id' => null,
				'name' => null,
				'photo' => null,
				'email' => null,
				'culture' => null,
				'pass' => null,
				'active' => null,
				'skin' => null,
				'hashed_pass' => null
			]);
			$this->session->set_tempdata('logout', 'Logged Out', 1);
			session_destroy();
			redirect(base_url('login'));
		}
		
	}
?>
