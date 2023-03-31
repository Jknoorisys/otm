<?php
class Admin_Report extends CI_Controller
{
    public function add_questions()
    {
        $this->load->view('admin/admin_header');
	    $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin_add_questions');
	    $this->load->view('admin/admin_footer');

    }



}
?>