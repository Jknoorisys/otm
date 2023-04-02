<?php
    class User_Report_Model extends CI_Model{

        // get all published questions
        public function get_questions($where)
        {
            return $this->db->where($where)
								->get('questions')
								->result_array();	
        }

        // get published questions group details
        public function get_question_group()
        {
            return $this->db->select('group.*')
                            ->where('sc.status', 'publish')
                            ->join('question_groups as group','group.id=sc.group_id','left')
                            ->get('questions as sc')
                            ->row_array();
        }

        // add developer report
        public function add_report($data)
        {
            return $this->db->insert('reports', $data);
        }

        // add developer review
        public function add_review($data)
        {
            return $this->db->insert('reviews', $data);
        }

        // get developer report history
        public function get_reports($where)
        {
            return $this->db->select('reports.*, group.month_start, group.month_end, group.year')
                            ->join('question_groups as group','group.id=reports.question_group','left')
                            ->where($where)
                            ->get('reports')
                            ->result_array();
        }

        // get developer review details
        public function get_reviews($where)
        {
            return $this->db->select('reviews.*, group.month_start, group.month_end, group.year,question.question')
                            ->join('question_groups as group','group.id=reviews.question_group','left')
                            ->join('questions as question','question.id=reviews.question_id','left')
                            ->where($where)
                            ->get('reviews')
                            ->result_array();
        }
    }
?>