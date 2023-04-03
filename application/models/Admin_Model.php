<?php

    class Admin_Model extends CI_Model
    {
        public function add_que_func($question)
        {
            $this->db->insert('questions',$question);
            return  $this->db->insert();
        }
        public function group_id()
        {
            $grp = $this->db->from('question_groups')->get()->result_array();
            return $grp;
        }
    }
    
?>