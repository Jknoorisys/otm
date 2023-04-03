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
                $this->users_group_id=$this->session->userdata('users_group_id');
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
           $question_ids = $this->input->post('question_id');
           $developer_rating = $this->input->post('developer_rating');
           $developer_comment = $this->input->post('developer_comment');
           $question_group = $this->input->post('question_group');
           $toatl = count($question_ids) * 5;

           $report_data = [
                'question_group' => $question_group,
                'user_id' => $this->login_id,
                'users_group_id' => $this->users_group_id,
                'created_at' => date('Y-m-d H:i:s')
           ];

           $report_id = $this->Report->add_report($report_data);

           if ($report_id) {
                if ($question_ids) {
                    $sum = 0;
                    foreach ($question_ids as $question_id) {
                        $sum = $developer_rating[$question_id] + $sum;
                        $data = [
                            'report_id' => $report_id,
                            'question_group' => $question_group,
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
                        $update_data = [
                            'dev_total' => $sum,
                            'dev_percentage' => ($sum * 100) / $toatl
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
                    'user_id' => $this->login_id,
                    'users_group_id' => $this->users_group_id,
                    'report_id' => $report_id
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