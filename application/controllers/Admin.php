<?php 
    class Admin extends CI_Controller{

        public function __construct()
		{
			parent::__construct();
			$this->load->model('manager_model');
			$this->load->model('Manager_Leave_Model','Leave');
            $this->load->model('Admin_Model','Admin');

			if ($this->session->userdata('isLogin') == 1 && $this->session->userdata('isManager') == 1 && $this->session->userdata('isAdmin') == 1) {
				$this->login_id = $this->session->userdata('id');
				$this->group_id = $this->session->userdata('users_group_id');
				$this->tl_id = $this->group_id == 13 ? $this->login_id : '';
				$this->manager_email = $this->session->userdata('email');

				$projects['login_id'] = $this->session->userdata('id');
				$projects['fetch'] = $this->manager_model->get_project_details();
				$projects['users'] = $this->manager_model->get_user_details($this->tl_id, $this->manager_email);
				$this->load->view('admin/admin_header', $projects);
				$this->load->view('admin/admin_menubar');
			} else {
				redirect(base_url());
			}
		}

        public function dashboard()
		{
			
			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');

			$data['total_requests'] = $this->manager_model->requested_ot($tl_id, $manager_email);
			$data['pending_requests'] = $this->manager_model->pending_ot($tl_id, $manager_email);
			$data['accepted_requests'] = $this->manager_model->accepted_ot($tl_id, $manager_email);
			$data['rejected_requests'] = $this->manager_model->rejected_ot($tl_id, $manager_email);

			$data['requested_ot_of_current_month'] = $this->manager_model->requested_ot_of_current_month($tl_id, $manager_email);
			$data['pending_ot_of_current_month'] = $this->manager_model->pending_ot_of_current_month($tl_id, $manager_email);
			$data['accepted_ot_of_current_month'] = $this->manager_model->accepted_ot_of_current_month($tl_id, $manager_email);
			$data['rejected_ot_of_current_month'] = $this->manager_model->rejected_ot_of_current_month($tl_id, $manager_email);

			$data['total_leave_requests'] = $this->Leave->total_requested_leave_days($tl_id, $manager_email);
			$data['pending_leave_requests'] = $this->Leave->total_pending_leave_days($tl_id, $manager_email);
			$data['accepted_leave_requests'] = $this->Leave->total_accepted_leave_days($tl_id, $manager_email);
			$data['rejected_leave_requests'] = $this->Leave->total_rejected_leave_days($tl_id, $manager_email);

			$data['requested_leave_of_current_month'] = $this->Leave->requested_leave_of_current_month($tl_id, $manager_email);
			$data['pending_leave_of_current_month'] = $this->Leave->pending_leave_of_current_month($tl_id, $manager_email);
			$data['accepted_leave_of_current_month'] = $this->Leave->accepted_leave_of_current_month($tl_id, $manager_email);
			$data['rejected_leave_of_current_month'] = $this->Leave->rejected_leave_of_current_month($tl_id, $manager_email);

			$this->load->view('manager/manager_dashboard', $data);
			$this->load->view('manager/manager_footer');
		}
    }
?>