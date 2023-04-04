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
        $data['grp'] = $this->Admin_Model->group_id();
        // echo json_encode($data['grp']);exit;
        $this->load->view('admin/admin_header');
	    $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin_add_questions',$data);
	    $this->load->view('admin/admin_footer');

    }
    public function add_que_func()
    {
        // echo json_encode($this->input->post());exit;
        if($this->input->post())
        {
            $data['grp'] = $this->Admin_Model->group_id();
            $question = $this->input->post('repeater-group');
            // echo json_encode($question);exit;

            foreach($question as $que => $qvalue ){
                // echo json_encode($qvalue);exit;
                $grp = array(
                    'question' => $qvalue['quet'],
                    'users_group_id' => $this->input->post('users_group_id'),
                    'created_at' => date('d-m-Y h:i:sa'),
                );
                $ids = $this->Admin_Model->add_que_func($grp);//$Ids is array of returned id
               }
            //    echo json_encode($grp);exit;
            $this->load->view('admin/admin_header');
            $this->load->view('admin/admin_menubar');
            $this->load->view('admin-report/admin_add_questions',$data);
            $this->load->view('admin/admin_footer');
        }
        
    
        
    }
    public function question_list()
    {
            $data['question'] = $this->Admin_Model->get_questions();
            // echo json_encode($data['question']);exit;
            $this->load->view('admin/admin_header');
            $this->load->view('admin/admin_menubar');
            $this->load->view('admin-report/admin_question_list',$data);
            $this->load->view('admin/admin_footer');
    }
    public function edit_question($id)
    {
        // echo json_encode($this->input->post());exit;
        
        $info['q'] = $this->Admin_Model->edit_question($id);
        // echo json_encode($info['q']);exit;
        $this->load->view('admin/admin_header');
        $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin_question_list',$info);
        $this->load->view('admin/admin_footer');
    }
    public function update_question($id)
    {
        $question = $this->input->post();

        $update['question'] = $this->Admin_Model->update_question($id,$question);
        $data['question'] = $this->Admin_Model->get_questions();

        redirect(base_url('admin-question_list'));
    }

    public function change_status()
    {
        $status = $this->input->post('status');
        $id = $this->input->post('id');
        
        $change = $this->Admin_Model->change_status($id,$status);
      
        redirect(base_url('admin-question_list'));
    }

    public function report_list()
    {
        $data['report'] = $this->Admin_Model->get_report();
        $data['username'] = $this->Admin_Model->get_username();
        $this->load->view('admin/admin_header');
        $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin-report-list',$data);
        $this->load->view('admin/admin_footer');
    }

    public function filter_report()
    {
        $date = $this->input->post();
        // echo json_encode($date);exit;
    }

}
?>