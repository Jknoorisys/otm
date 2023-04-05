<?php
class Admin_Report extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('manager_model');
        $this->load->model('Admin_Model');
        $this->load->model('Manager_Report_Model', 'Report');

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

    public function add_questions()
    {
        $data['grp'] = $this->Admin_Model->group_id();
        
        $this->load->view('admin_report/admin_add_questions',$data);
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

            $this->load->view('admin/admin_footer');
            $this->load->view('admin_report/admin_add_questions',$data);
        }
        
    
        
    }

    public function question_list()
    {
            $data['question'] = $this->Admin_Model->get_questions();
            
            $this->load->view('admin_report/admin_question_list',$data);
            $this->load->view('admin/admin_footer');
    }

    public function edit_question($id)
    {
        $info['q'] = $this->Admin_Model->edit_question($id);

        $this->load->view('admin_report/admin_question_list',$info);
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
        if ((is_array($_POST) && empty($_POST))) {
            
            $filter = array(
                "name"           => '',
                'month_start'    => '',
                'month_end'      => ''
            );
        } else {
            $by_month_start = $this->input->post('by_month_start') ? explode('-',($this->input->post('by_month_start'))) : '';
            $dateObj1   = $by_month_start ? DateTime::createFromFormat('!m', $by_month_start[1]) : '';
            $month_start = $dateObj1 ? $dateObj1->format('F') : '';
    
            $by_month_end = $this->input->post('by_month_end') ? explode('-',$this->input->post('by_month_end')) : '';
            $dateObj1   = $by_month_end ? DateTime::createFromFormat('!m', $by_month_end[1]) : '';
            $month_end = $dateObj1 ? $dateObj1->format('F') : '';

            $filter = array(
                "name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
                'month_start'    => $month_start ? $month_start : '',
                'month_end'      => $month_end ? $month_end : ''
            );
        }
       
        $data['filter'] = $filter;
        $data['report'] = $this->Admin_Model->get_filtered_report($filter);
        $data['user'] = $this->Admin_Model->get_username();

        $this->load->view('admin_report/admin-report-list',$data);
        $this->load->view('admin/admin_footer');
    }

    public function add_quarter()
    {
        $this->load->view('admin/admin_header');
        $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin-add-quarter');
        $this->load->view('admin/admin_footer');
    }
    public function save_quarter()
    {
        $quarter = $this->input->post();
        // echo json_encode($quarter);exit;
        $data = $this->Admin_Model->save_quarter($quarter);
        $this->load->view('admin/admin_header');
        $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin-add-quarter');
        $this->load->view('admin/admin_footer');
    }
    public function list_quarter()
    {
        $quarter['month'] = $this->Admin_Model->list_quarter();
        // echo json_encode($quarter);exit;
        $this->load->view('admin/admin_header');
        $this->load->view('admin/admin_menubar');
        $this->load->view('admin-report/admin-list-quarter',$quarter);
        $this->load->view('admin/admin_footer');
    }

    public function tlReport()
    {
       
            $filter = array(
                "name"           => '',
            );
			
			$where = [
				'reports.users_group_id' => '13',
				'reports.status IN ("inprogress", "completed")' => NULL,
			];

			$data['filter'] = $filter;
            $data['reports'] = $this->Report->get_reports($where, $filter);

			$this->load->view('admin/admin_footer');
			$this->load->view('admin_report/tl_reports', $data);
    }

    public function tlReviewDetails()
    {
        $report_id = $this->input->post('report_id');
			$report_status = $this->input->post('report_status');
			$user_id = $this->input->post('user_id');
			

            if ($report_id && $report_status) {
                $where = [
                    'sc.user_id' => $user_id,
                    'sc.users_group_id' => '13',
                    'sc.report_id' => $report_id
                ];

                $data['reviews'] = $this->Report->get_reviews($where);

				if ($report_status == 'inprogress') {
					$this->load->view('admin/admin_footer');
			    	$this->load->view('admin_report/admin_tl_review', $data);
				} elseif ($report_status == 'completed') {
					$this->load->view('admin/admin_footer');
			    	$this->load->view('admin_report/tl_report_details', $data);
				}
            } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('admin-tl-report'));
            }
    }

    public function AddTlReview()
    {
        $review_id = $this->input->post('review_id');
        $question_ids = $this->input->post('question_id');
        $rating = $this->input->post('rating');
        $comment = $this->input->post('comment');
        $quarter_id = $this->input->post('quarter_id');
        $report_id = $this->input->post('report_id');
        // $toatl = count($question_ids) * 5;

        if ($report_id && $review_id) {
                if ($question_ids) {
                    $sum = 0;
                    foreach ($question_ids as $question_id) {
                        $sum = $rating[$question_id] + $sum;
                        $data = [
                            'ceo_comment' => $comment[$question_id],
                            'ceo_rating' => $rating[$question_id],
                            'status' => 'completed',
                            'updated_at' => date('Y-m-d H:i:s')
                        ];	
                        
                        $update = $this->Report->update_review($data, $review_id[$question_id]);
                    }

                    if ($update) {
                        
                        $update_data = [
                            'ceo_total' => $sum,
                            'ceo_percentage' => ($sum * 100) / (count($question_ids) * 5),
                            'status' => 'completed',
                            'updated_at' => date('Y-m-d H:i:s')
                        ];
                        
                        $this->Report->update_report($update_data, $report_id);
                        
                        $this->session->set_tempdata('add', 'Review Submitted!', 2);
                        redirect(base_url('admin-add-tl-review'));
                    } else {
                        $this->session->set_tempdata('failure', 'Retry!', 2);
                        redirect(base_url('admin-tl-report'));
                    }
                } else {
                    $this->session->set_tempdata('failure', 'Retry!', 2);
                    redirect(base_url('admin-tl-report'));
                }
        } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('admin-tl-report'));
        }
    }

    public function managerReport()
    {
    
            $filter = array(
                "name"           => '',
            );
			
			$where = [
				'reports.users_group_id' => '4',
				'reports.status IN ("pending", "completed")' => NULL,
			];

			$data['filter'] = $filter;
            $data['reports'] = $this->Report->get_reports($where, $filter);

			$this->load->view('admin/admin_footer');
			$this->load->view('admin_report/maanger_reports', $data);
    }

    public function managerReviewDetails()
    {
        $report_id = $this->input->post('report_id');
        $report_status = $this->input->post('report_status');
        $user_id = $this->input->post('user_id');
        

        if ($report_id && $report_status) {
            $where = [
                'sc.user_id' => $user_id,
                'sc.users_group_id' => '4',
                'sc.report_id' => $report_id
            ];

            $data['reviews'] = $this->Report->get_reviews($where);

            if ($report_status == 'pending') {
                $this->load->view('admin/admin_footer');
                $this->load->view('admin_report/admin_manager_review', $data);
            } elseif ($report_status == 'completed') {
                $this->load->view('admin/admin_footer');
                $this->load->view('admin_report/manager_report_details', $data);
            }
        } else {
            $this->session->set_tempdata('failure', 'Retry!', 2);
            redirect(base_url('admin-tl-report'));
        }
    }

    public function AddManagerReview()
    {
        $review_id = $this->input->post('review_id');
        $question_ids = $this->input->post('question_id');
        $rating = $this->input->post('rating');
        $comment = $this->input->post('comment');
        $quarter_id = $this->input->post('quarter_id');
        $report_id = $this->input->post('report_id');
        // $toatl = count($question_ids) * 5;

        if ($report_id && $review_id) {
                if ($question_ids) {
                    $sum = 0;
                    foreach ($question_ids as $question_id) {
                        $sum = $rating[$question_id] + $sum;
                        $data = [
                            'ceo_comment' => $comment[$question_id],
                            'ceo_rating' => $rating[$question_id],
                            'status' => 'completed',
                            'updated_at' => date('Y-m-d H:i:s')
                        ];	
                        
                        $update = $this->Report->update_review($data, $review_id[$question_id]);
                    }

                    if ($update) {
                        
                        $update_data = [
                            'ceo_total' => $sum,
                            'ceo_percentage' => ($sum * 100) / (count($question_ids) * 5),
                            'status' => 'completed',
                            'updated_at' => date('Y-m-d H:i:s')
                        ];
                        
                        $this->Report->update_report($update_data, $report_id);
                        
                        $this->session->set_tempdata('add', 'Review Submitted!', 2);
                        redirect(base_url('admin-add-manager-review'));
                    } else {
                        $this->session->set_tempdata('failure', 'Retry!', 2);
                        redirect(base_url('admin-manager-report'));
                    }
                } else {
                    $this->session->set_tempdata('failure', 'Retry!', 2);
                    redirect(base_url('admin-manager-report'));
                }
        } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('admin-manager-report'));
        }
    }
}
