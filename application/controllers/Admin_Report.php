<?php
class Admin_Report extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
			$this->load->model('Admin_Model');
			// $this->load->model('manager_model');

    }
    public function add_questions()
    {
        // $data['grp'] = $this->Admin_Model->group_id();
        // echo json_encode($grp['month_start']);exit;
        $this->load->view('admin/admin_header');
	    $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin_add_questions');
	    $this->load->view('admin/admin_footer');

    }
    public function add_que_func()
    {
        $question = array(
            'question' => $this->input->post('qut'),
            'user_group_id' => $this->input->post('user_group_id'),
            'created_at' => date('d-m-Y h:i:sa')
        );
        echo json_encode($question);exit;
        $this->Admin_Model->add_que_func($question);
        $this->load->view('admin/admin_header');
	    $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin_add_questions');
	    $this->load->view('admin/admin_footer');
    }



}
?>