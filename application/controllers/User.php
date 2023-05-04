<?php
    class User extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
            $this->load->model('user_model');
			$this->load->model('User_Leave_Model','Leave');
			$this->load->model('Manager_Leave_Model','managerLeave');
            if($this->session->userdata('isLogin') == 1  && $this->session->userdata('isManager') == 0 && $this->session->userdata('isAdmin') == 0){
            	$this->login_id=$this->session->userdata('id');
				$leave['balance_leave'] = $this->managerLeave->get_user_balance_leave($this->login_id);
            	$this->load->view('users/header', $leave);
				$this->load->view('users/menubar');
            }else{
			
                redirect(base_url());
            }
        }

        public function dashboard(){
			$data['total_requests']=$this->user_model->requested_ot($this->login_id);
			$data['pending_requests']=$this->user_model->pending_ot($this->login_id);
			$data['accepted_requests']=$this->user_model->accepted_ot($this->login_id);
			$data['rejected_requests']=$this->user_model->rejected_ot($this->login_id);

			$data['total_leave_requests'] = $this->Leave->total_requested_leave_days($this->login_id, ['']);
			$data['pending_leave_requests'] = $this->Leave->total_pending_leave_days($this->login_id, ['']);
			$data['accepted_leave_requests'] = $this->Leave->total_accepted_leave_days($this->login_id, ['']);
			$data['rejected_leave_requests'] = $this->Leave->total_rejected_leave_days($this->login_id, ['']);
			$this->load->view('users/dashboard', $data);	
			$this->load->view('users/footer');		
		}

		public function add_ot(){
			$projects['fetch'] = $this->user_model->get_project_details();
			$this->load->view('users/footer');
			$this->load->view('users/add_ot', $projects);
		}

		public function add_ot_func(){
			date_default_timezone_set('Asia/Kolkata');
			$ot_date = $this->input->post('ot_date');
			if ($ot_date == date('Y-m-d') || $ot_date == date('Y-m-d',strtotime("-1 days")) || $ot_date == date('Y-m-d',strtotime("-2 days"))) {
				$ot_data = array (
					'user_id' => $this->session->userdata('id'),
					'project_name'=>$this->input->post('project_name'),
					'ot_hours'=>$this->input->post('ot_hours'),
					'ot_date'=>$this->input->post('ot_date'),
					'str_ot_date' => strtotime($this->input->post('ot_date')),
					'ot_time'=>$this->input->post('ot_time'),
					'ot_location'=>$this->input->post('ot_location'),
					'requested_description'=>$this->input->post('description'),
					'created_datetime' => date('d-m-Y h:i:sa')
					);
			}else{
				$this->session->set_tempdata('failure', 'Retry!', 2);
				redirect(base_url('add-ot'));
			}

			// $ot_data = array (
			// 	'user_id' => $this->session->userdata('id'),
			// 	'project_id'=>$this->input->post('project_name'),
			// 	'ot_hours'=>$this->input->post('ot_hours'),
			// 	'ot_date'=>$this->input->post('ot_date'),
			// 	'str_ot_date' => strtotime($this->input->post('ot_date')),
			// 	'ot_time'=>$this->input->post('ot_time'),
			// 	'ot_location'=>$this->input->post('ot_location'),
			// 	'requested_description'=>$this->input->post('description'),
			// 	'created_datetime' => date('d-m-Y h:i:sa')
			// 	);

			if($ot_data){
				$this->user_model->add_ot($ot_data);
				$this->session->set_tempdata('add', 'OT Added', 2);
				redirect(base_url('requested-ot'));
			}
			else{
				$this->session->set_tempdata('failure', 'Retry!', 2);
				redirect(base_url('add-ot'));
			}
		}

		public function requested_ot(){
			if((is_array($_POST) && empty($_POST))){
				$filter = array(
					"project"        => '',
					"start_date" 	 => '',
					"end_date"   	 => ''
				);
			}
			else{
				$filter = array(
					"project"        => (!empty($_POST["by_project"]) && $_POST["by_project"] != 'NULL')? $_POST["by_project"] : '',
					"start_date" 	 => (!empty($_POST["start_date"]) && $_POST["start_date"] != 'NULL')? $_POST["start_date"] : '',
					"end_date"   	 => (!empty($_POST["end_date"]) && $_POST["end_date"] != 'NULL')? $_POST["end_date"] : '',
				);
			}
			$data['ot_details'] = $this->user_model->filtered_pending_ot($filter, $this->login_id);
			$data['total_hours']=$this->user_model->total_pending_ot_hours($filter, $this->login_id);
			$data['projects'] = $this->user_model->get_project_details();
			$data['filter'] = $filter;
			$this->load->view('users/requested_ot', $data);
			$this->load->view('users/footer');
		}

		public function accepted_ot(){
			if((is_array($_POST) && empty($_POST))){
				$filter = array(
					"project"        => '',
					"start_date" 	 => '',
					"end_date"   	 => ''
				);
			}
			else{
				$filter = array(
					"project"        => (!empty($_POST["by_project"]) && $_POST["by_project"] != 'NULL')? $_POST["by_project"] : '',
					"start_date" 	 => (!empty($_POST["start_date"]) && $_POST["start_date"] != 'NULL')? $_POST["start_date"] : '',
					"end_date"   	 => (!empty($_POST["end_date"]) && $_POST["end_date"] != 'NULL')? $_POST["end_date"] : '',
				);
			}
			$data['ot_details'] = $this->user_model->filtered_accepted_ot($filter, $this->login_id);
			$data['total_hours']=$this->user_model->total_accepted_ot_hours($filter, $this->login_id);
			$data['projects'] = $this->user_model->get_project_details();
			$data['filter'] = $filter;
			$this->load->view('users/accepted_ot', $data);
			$this->load->view('users/footer');
		}

		public function rejected_ot(){
			if((is_array($_POST) && empty($_POST))){
				$filter = array(
					"project"        => '',
					"start_date" 	 => '',
					"end_date"   	 => ''
				);
			}
			else{
				$filter = array(
					"project"        => (!empty($_POST["by_project"]) && $_POST["by_project"] != 'NULL')? $_POST["by_project"] : '',
					"start_date" 	 => (!empty($_POST["start_date"]) && $_POST["start_date"] != 'NULL')? $_POST["start_date"] : '',
					"end_date"   	 => (!empty($_POST["end_date"]) && $_POST["end_date"] != 'NULL')? $_POST["end_date"] : '',
				);
			}
			$data['ot_details'] = $this->user_model->filtered_rejected_ot($filter, $this->login_id);
			$data['total_hours']=$this->user_model->total_rejected_ot_hours($filter, $this->login_id);
			$data['projects'] = $this->user_model->get_project_details();
			$data['filter'] = $filter;
			$this->load->view('users/rejected_ot', $data);
			$this->load->view('users/footer');
		}

		public function change_password(){
			$this->form_validation->set_rules('old_pass', 'Old Password' ,'callback_check_password');
            $this->form_validation->set_rules('new_pass', 'New Password' ,'required');
            $this->form_validation->set_rules('confirm_pass', 'Confirm Password' ,'required|matches[new_pass]');

            if($this->form_validation->run()==FALSE){
				$this->session->set_tempdata('password', 'Unable to change Password!', 2);
				redirect(base_url('requested-ot'));
            }
            else{
                $new_pass = $this->input->post('new_pass');
				$user_pass = array('pass'=> md5($new_pass));
                $this->user_model->change_password($this->login_id,$user_pass);  
				$this->session->set_tempdata('password_changed', 'Password Changed!', 2);
                redirect(base_url('user-dashboard'));
			}
			
		}

		function check_password($old_pass){
            $user = $this->user_model->get_user($this->login_id);
            if($user['pass'] !== md5($old_pass)){
                return false;
            }
            return true;
        }

		public function delete($id){
			$this->user_model->delete($id);
			$this->session->set_tempdata('delete', 'Deleted!', 2);
			echo "true"; die();
		}
    }
?>
