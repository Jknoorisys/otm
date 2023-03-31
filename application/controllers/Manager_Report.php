<?php
    class Manager_Report extends CI_Controller{
        public function __construct()
		{
			parent::__construct();
			$this->load->model('manager_model');
			$this->load->model('Manager_Leave_Model','Leave');
            $this->load->model('Manager_Report_Model','Report');
			$this->load->model('User_Report_Model','User_Report');

			if ($this->session->userdata('isLogin') == 1  && $this->session->userdata('isManager') == 1 && $this->session->userdata('isAdmin') == 0) {
				$this->login_id = $this->session->userdata('id');
				$this->group_id = $this->session->userdata('users_group_id');
				$this->tl_id = $this->group_id == 13 ? $this->login_id : '';
				$this->manager_email = $this->session->userdata('email');

				$projects['login_id'] = $this->session->userdata('id');
				$projects['fetch'] = $this->manager_model->get_project_details();
				$projects['users'] = $this->manager_model->get_user_details($this->tl_id, $this->manager_email);
				$this->load->view('manager/manager_header', $projects);
				$this->load->view('manager/manager_menubar');
			} else {
				redirect(base_url());
			}
		}
    }
?>