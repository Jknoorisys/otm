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
				$this->users_group_id = $this->session->userdata('users_group_id');

				$this->tl_id = $this->users_group_id == 13 ? $this->login_id : '';
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

		public function latestReport()
        {
            $where = ['sc.status' => 'active', 'sc.users_group_id' => $this->users_group_id];
            $data['questions'] = $this->Report->get_questions($where);
            $data['quarter'] = $this->Report->get_question_group();
            $this->load->view('manager/manager_footer');
			$this->load->view('manager_report/report', $data);
        }

        public function AddReview()
        {
           $question_ids = $this->input->post('question_id');
           $rating = $this->input->post('rating');
           $comment = $this->input->post('comment');
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
                    $sum = 0;
                    foreach ($question_ids as $question_id) {
						$total = count($question_ids) * 5;
                        $sum = $rating[$question_id] + $sum;
						if ($this->users_group_id == 13) {
							$data = [
								'report_id' => $report_id,
								'quarter_id' => $quarter_id,
								'user_id' => $this->login_id,
								'users_group_id' => $this->users_group_id,
								'question_id' => $question_id,
								'tl_comment' => $comment[$question_id],
								'tl_rating' => $rating[$question_id],
								'created_at' => date('Y-m-d H:i:s')
							];	
						} else {
							$data = [
								'report_id' => $report_id,
								'quarter_id' => $quarter_id,
								'user_id' => $this->login_id,
								'users_group_id' => $this->users_group_id,
								'question_id' => $question_id,
								'manager_comment' => $comment[$question_id],
								'manager_rating' => $rating[$question_id],
								'created_at' => date('Y-m-d H:i:s')
							];	
						}
						
                        $insert = $this->Report->add_review($data);
                    }

                    if ($insert) {

						if ($this->users_group_id == 13) {
							$wtg = $this->Report->get_tl_wtg();

							$update_data = [
								'tl_total' => $total - ($total * $wtg['weightage']),
								'tl_percentage' => $sum - ($sum * $wtg['weightage'])
							];
						} else {
							$wtg = $this->Report->get_manager_wtg();

							$update_data = [
								'manager_total' => $total - ($total * $wtg['weightage']),
								'manager_percentage' => $sum - ($sum * $wtg['weightage'])
							];
						}
                        
                        $this->Report->update_report($update_data, $report_id);
                        
                        $this->session->set_userdata('isSubmitted', 1);
                        $this->session->set_tempdata('add', 'Review Submitted!', 2);
                        redirect(base_url('manager-latest-report'));
                    } else {
                        $this->session->set_tempdata('failure', 'Retry!', 2);
                        redirect(base_url('manager-latest-report'));
                    }
                } else {
                    $this->session->set_tempdata('failure', 'Retry!', 2);
                    redirect(base_url('manager-latest-report'));
                }
           } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('manager-latest-report'));
           }
        }

        public function reportHistory()
        {
			$filter = array(
				"name"           => '',
			);

            $where = [
                'reports.user_id' => $this->login_id,
                'reports.users_group_id' => $this->users_group_id,
            ];

            $data['reports'] = $this->Report->get_reports($where, $filter);

            $this->load->view('manager/manager_footer');
			$this->load->view('manager_report/report_history', $data);
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

                $this->load->view('manager/manager_footer');
			    $this->load->view('manager_report/report_details', $data);
            } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('manager-report-history'));
            }
        }

		public function developerReport()
		{
			$data['users'] = $this->Report->get_user_details($this->tl_id, '2');

			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"name"           => '',
				);
			} else {
				$filter = array(
					"name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
				);
			}

			if ($this->users_group_id == 13) {
				$where = [
					'reports.users_group_id' => '2',
					'user.tl_id' => $this->tl_id,
					'reports.status IN ("pending", "completed")' => NULL,
				];

				// $where = "reports.users_group_id='2' AND user.tl_id=$this->tl_id AND (reports.status = 'inprogress' OR reports.status = 'completed')";
			} else {
				$where = [
					'reports.users_group_id' => '2',
					'reports.status IN ("inprogress", "completed")' => NULL,
				];
				
				// $where = "reports.users_group_id='2' AND (reports.status = 'inprogress' OR reports.status = 'completed')";
			}

			$data['filter'] = $filter;
            $data['reports'] = $this->Report->get_reports($where, $filter);

			$this->load->view('manager/manager_footer');
			$this->load->view('manager_report/developer_reports', $data);
		}

		public function developerReviewDetails()
		{
			$report_id = $this->input->post('report_id');
			$report_status = $this->input->post('report_status');
			$user_id = $this->input->post('user_id');
			

            if ($report_id && $report_status) {
                $where = [
                    'sc.user_id' => $user_id,
                    'sc.users_group_id' => '2',
                    'sc.report_id' => $report_id
                ];

                $data['reviews'] = $this->Report->get_reviews($where);

				if ($report_status == 'pending') {
					$this->load->view('manager/manager_footer');
			    	$this->load->view('manager_report/tl_developer_review', $data);
				} elseif ($report_status == 'inprogress') {
					$this->load->view('manager/manager_footer');
			    	$this->load->view('manager_report/manager_developer_review', $data);
				} else{
					$this->load->view('manager/manager_footer');
			    	$this->load->view('manager_report/developer_report_details', $data);
				}
                
            } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('manager-developer-report'));
            }
		}

		public function tlReport()
		{
			$data['users'] = $this->Report->get_user_details($this->tl_id, '13');

			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"name"           => '',
				);
			} else {
				$filter = array(
					"name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
				);
			}

			
			$where = [
				'reports.users_group_id' => '13',
				'reports.status IN ("pending", "completed")' => NULL,
			];

			$data['filter'] = $filter;
            $data['reports'] = $this->Report->get_reports($where, $filter);

			$this->load->view('manager/manager_footer');
			$this->load->view('manager_report/tl_reports', $data);
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

				if ($report_status == 'pending') {
					$this->load->view('manager/manager_footer');
			    	$this->load->view('manager_report/manager_tl_review', $data);
				} elseif ($report_status == 'inprogress') {
					$this->load->view('manager/manager_footer');
			    	$this->load->view('manager_report/ceo_tl_review', $data);
				} else{
					$this->load->view('manager/manager_footer');
			    	$this->load->view('manager_report/tl_report_details', $data);
				}
                
            } else {
                $this->session->set_tempdata('failure', 'Retry!', 2);
                redirect(base_url('manager-developer-report'));
            }
		}

		public function AddDeveloperReview()
		{
			$review_id = $this->input->post('review_id');
			$question_ids = $this->input->post('question_id');
			$rating = $this->input->post('rating');
			$comment = $this->input->post('comment');
			$report_id = $this->input->post('report_id');

			if ($report_id && $review_id) {
					if (!empty($question_ids)) {
						$total = count($question_ids) * 5;
						$sum = 0;
						foreach ($question_ids as $question_id) {
							$sum = $rating[$question_id] + $sum;
							if ($this->users_group_id == 13) {
								$data = [
									'tl_comment' => $comment[$question_id],
									'tl_rating' => $rating[$question_id],
									'status' => 'inprogress',
									'updated_at' => date('Y-m-d H:i:s')
								];	
							} else {
								$data = [
									'manager_comment' => $comment[$question_id],
									'manager_rating' => $rating[$question_id],
									'status' => 'completed',
									'updated_at' => date('Y-m-d H:i:s')
								];	
							}
							
							$update = $this->Report->update_review($data, $review_id[$question_id]);
						}

						if ($update) {
							if ($this->users_group_id == 13) {
								$wtg = $this->Report->get_tl_wtg();

								$update_data = [
									'tl_total' => $total - ($total * $wtg['weightage']),
									'tl_percentage' => $sum - ($sum * $wtg['weightage']),
									'status' => 'inprogress',
									'updated_at' => date('Y-m-d H:i:s')
								];
							} else {
								$wtg = $this->Report->get_manager_wtg();
								$report = $this->Report->get_report($report_id);
								$score = $report['dev_percentage'] + $report['tl_percentage'] + ($sum - ($sum * $wtg['weightage']));
								$score_percent = ( $score * 100 ) / ($report['dev_total'] + $report['tl_total'] + ($total - ($total * $wtg['weightage'])));
								$update_data = [
									'manager_total' => $total - ($total * $wtg['weightage']),
									'manager_percentage' => $sum - ($sum * $wtg['weightage']),
									'score' => number_format((float)$score_percent, 2, '.', ''),
									'status' => 'completed',
									'updated_at' => date('Y-m-d H:i:s')
								];
							}
							
							$this->Report->update_report($update_data, $report_id);
							
							$this->session->set_tempdata('add', 'Review Submitted!', 2);
							redirect(base_url('manager-add-developer-review'));
						} else {
							$this->session->set_tempdata('failure', 'Retry!', 2);
							redirect(base_url('manager-developer-report'));
						}
					} else {
						$this->session->set_tempdata('failure', 'Retry!', 2);
						redirect(base_url('manager-developer-report'));
					}
			} else {
				$this->session->set_tempdata('failure', 'Retry!', 2);
				redirect(base_url('manager-developer-report'));
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
						$total = count($question_ids) * 5;
						$sum = 0;
						foreach ($question_ids as $question_id) {
							$sum = $rating[$question_id] + $sum;
							$data = [
								'manager_comment' => $comment[$question_id],
								'manager_rating' => $rating[$question_id],
								'status' => 'inprogress',
								'updated_at' => date('Y-m-d H:i:s')
							];	
							
							$update = $this->Report->update_review($data, $review_id[$question_id]);
						}

						if ($update) {
							
							$wtg = $this->Report->get_tl_wtg();
							$update_data = [
								'manager_total' => $total - ($total * $wtg['weightage']),
								'manager_percentage' => $sum - ($sum * $wtg['weightage']),
								'status' => 'inprogress',
								'updated_at' => date('Y-m-d H:i:s')
							];
							
							$this->Report->update_report($update_data, $report_id);
							
							$this->session->set_tempdata('add', 'Review Submitted!', 2);
							redirect(base_url('manager-add-tl-review'));
						} else {
							$this->session->set_tempdata('failure', 'Retry!', 2);
							redirect(base_url('manager-tl-report'));
						}
					} else {
						$this->session->set_tempdata('failure', 'Retry!', 2);
						redirect(base_url('manager-tl-report'));
					}
			} else {
					$this->session->set_tempdata('failure', 'Retry!', 2);
					redirect(base_url('manager-tl-report'));
			}
		}
    }
?>