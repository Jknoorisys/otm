<?php 
    class Manager_Report_Model extends CI_Model{
        // get user details 
        public function get_user_details($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'abrar@fasterchecks.org') {
				$this->db->where_in("users.users_group_id",['13','4']);
				// $this->db->or_where("users.email",'abrar@fasterchecks.org');
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				// $this->db->or_where("users.email",'imran@noorisys.com');
			}

			return $this->db->select('*')
							->order_by('name')
							//->where('active', 1)
							->get('users')
							->result_array();
		}

        // get all published questions
        public function get_questions($where)
        {
            return $this->db->select('sc.*')
                                ->where($where)
								->get('questions as sc')
								->result_array();	
        }

        // get published questions quarter details
        public function get_question_group()
        {
            return $this->db->select('sc.*')
                            ->where('sc.status', 'active')
                            ->where('sc.is_published', '1')
                            ->get('quarters as sc')
                            ->row_array();
        }

        // add manager report
        public function add_report($data)
        {
            $this->db->insert('reports', $data);
            return $this->db->insert_id();
        }

        // update manager report
        public function update_report($update_data, $report_id)
        {
            return $this->db->where('id', $report_id)
                            ->update('reports', $update_data);
        }

        // add manager review
        public function add_review($data)
        {
            $this->db->insert('reviews', $data);
            return $this->db->insert_id();
        }

        // get manager report history
        public function get_reports($where, $filter)
        {
            if(!empty($filter['name'])) {
				$this->db->where("user.id",$filter['name']);
			}

            return $this->db->select('reports.*, quarter.month_start, quarter.month_end, quarter.year, user.name as user_name')
                            ->join('quarters as quarter','quarter.id=reports.quarter_id','left')
                            ->join('users as user','user.id=reports.user_id','left')
                            ->where($where)
                            ->or_where('reports.status', 'completed')
                            ->get('reports')
                            ->result_array();
        }

        // get manager review details
        public function get_reviews($where)
        {
            return $this->db->select('sc.*, quarter.month_start, quarter.month_end, quarter.year,question.question')
                            ->join('quarters as quarter','quarter.id=sc.quarter_id','left')
                            ->join('questions as question','question.id=sc.question_id','left')
                            ->where($where)
                            ->get('reviews as sc')
                            ->result_array();
        }

        // update developer review
        public function update_review($data, $review_id)
        {
            return $this->db->where('id', $review_id)
                            ->update('reviews', $data);
        }
    }
?>