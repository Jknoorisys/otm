<?php
    class User_report extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
            $this->load->model('user_model');
			$this->load->model('User_Leave_Model','Leave');
            $this->load->model('User_Report_Model','Report');

            if($this->session->userdata('isLogin') == 1  && $this->session->userdata('isManager') == 0 && $this->session->userdata('isAdmin') == 0){
            	$this->login_id=$this->session->userdata('id');
            	$this->load->view('users/header');
				$this->load->view('users/menubar');
            }else{
                redirect(base_url());
            }
        }

        public function latestReport()
        {
            $where = ['status' => 'publish'];
            $data['questions'] = $this->Report->get_questions($where);
            $data['question_group'] = $this->Report->get_question_group();
            $this->load->view('users/footer');
			$this->load->view('user_report/report', $data);
        }

        public function AddReview()
        {
            echo json_encode($_POST['']);
        }
    }
?>