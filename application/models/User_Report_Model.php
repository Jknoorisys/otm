<?php
    class User_Report_Model extends CI_Model{

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

        // add developer report
        public function add_report($data)
        {
            $this->db->insert('reports', $data);
            return $this->db->insert_id();
        }

        // update developer report
        public function update_report($update_data, $report_id)
        {
            return $this->db->where('id', $report_id)
                            ->update('reports', $update_data);
        }

        // add developer review
        public function add_review($data)
        {
            $this->db->insert('reviews', $data);
            return $this->db->insert_id();
        }

        // get developer report history
        public function get_reports($where)
        {
            return $this->db->select('reports.*, quarter.month_start, quarter.month_end, quarter.year')
                            ->join('quarters as quarter','quarter.id=reports.quarter_id','left')
                            ->where($where)
                            ->get('reports')
                            ->result_array();
        }

        // get developer review details
        public function get_reviews($where)
        {
            return $this->db->select('sc.*, quarter.month_start, quarter.month_end, quarter.year,question.question')
                            ->join('quarters as quarter','quarter.id=sc.quarter_id','left')
                            ->join('questions as question','question.id=sc.question_id','left')
                            ->where($where)
                            ->get('reviews as sc')
                            ->result_array();
        }
    }
?>