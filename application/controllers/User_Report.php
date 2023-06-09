<?php
    class User_report extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
            $this->load->model('user_model');
			$this->load->model('User_Leave_Model','Leave');
            $this->load->model('User_Report_Model','Report');
            $this->load->model('Manager_Leave_Model','managerLeave');

            if($this->session->userdata('isLogin') == 1  && $this->session->userdata('isManager') == 0 && $this->session->userdata('isAdmin') == 0){
            	$this->login_id=$this->session->userdata('id');
                $this->users_group_id=$this->session->userdata('users_group_id');
                $leave['balance_leave'] = $this->managerLeave->get_user_balance_leave($this->login_id);
            	$this->load->view('users/header', $leave);
				$this->load->view('users/menubar');
            }else{
                redirect(base_url());
            }
        }

        public function latestReport()
        {
            $where = ['sc.status' => 'active', 'sc.users_group_id' => $this->users_group_id];
            $data['questions'] = $this->Report->get_questions($where);
            $data['quarter'] = $this->Report->get_question_group($this->users_group_id);
            $this->load->view('users/footer');
			$this->load->view('user_report/report', $data);
        }

        public function AddReview()
        {
           $question_ids = $this->input->post('question_id');
           $developer_rating = $this->input->post('developer_rating');
           $developer_comment = $this->input->post('developer_comment');
           $quarter_id = $this->input->post('quarter_id');

           $report_data = [
                'quarter_id' => $quarter_id,
                'user_id' => $this->login_id,
                'users_group_id' => $this->users_group_id,
                'created_at' => date('Y-m-d H:i:s')
           ];

           $report_id = $this->Report->add_report($report_data);

           if ($report_id) {
                if ($question_ids) {
                    $total = count($question_ids) * 5;
                    $sum = 0;
                    foreach ($question_ids as $question_id) {
                        $sum = $developer_rating[$question_id] + $sum;
                        $data = [
                            'report_id' => $report_id,
                            'quarter_id' => $quarter_id,
                            'user_id' => $this->login_id,
                            'users_group_id' => $this->users_group_id,
                            'question_id' => $question_id,
                            'dev_comment' => $developer_comment[$question_id],
                            'dev_rating' => $developer_rating[$question_id],
                            'created_at' => date('Y-m-d H:i:s')
                        ];

                        $insert = $this->Report->add_review($data);
                    }

                    if ($insert) {
                        $wtg = $this->Report->get_where_wtg(['name' => 'developer_self']);
                        $update_data = [
                            'dev_total' => $sum ,
                            'dev_percentage' =>( ($sum/$total) * $wtg['weightage']) * 100
                        ];

                        $this->Report->update_report($update_data, $report_id);
                        
                        $this->session->set_userdata('isSubmitted', 1);
                        $this->session->set_tempdata('add', 'Review Submitted!', 2);
                        redirect(base_url('latest-report'));
                    } else {
                        $this->session->set_tempdata('failure', 'Retry!', 2);
                        redirect(base_url('latest-report'));
                    }
                } else {
                    $this->session->set_tempdata('failure', 'Retry!', 2);
                    redirect(base_url('latest-report'));
                }
           } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('latest-report'));
           }
        }

        public function reportHistory()
        {
            $where = [
                'user_id' => $this->login_id,
                'users_group_id' => $this->users_group_id,
            ];

            $data['reports'] = $this->Report->get_reports($where);
            $this->load->view('users/footer');
			$this->load->view('user_report/report_history', $data);
        }

        public function reviewDetails()
        {
            $report_id = $this->input->post('report_id');
            if ($report_id) {
                $where = [
                    'sc.user_id' => $this->login_id,
                    'sc.users_group_id' => $this->users_group_id,
                    'sc.report_id' => $report_id
                ];

                $data['reviews'] = $this->Report->get_reviews($where);

                $this->load->view('users/footer');
			    $this->load->view('user_report/report_details', $data);
            } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('report-history'));
            }
        }
    }
?>