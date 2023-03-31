<?php
    class User_Report_Model extends CI_Model{
        public function get_questions($where)
        {
            return $this->db->where($where)
								->get('questions')
								->result_array();	
        }

        public function get_question_group()
        {
            return $this->db->select('group.*')
                            ->where('sc.status', 'publish')
                            ->join('question_groups as group','group.id=sc.group_id','left')
                            ->get('questions as sc')
                            ->row_array();
        }
    }
?>