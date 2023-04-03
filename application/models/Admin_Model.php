<?php

    class Admin_Model extends CI_Model
    {
        public function add_que_func($grp)
        {
            $this->db->insert('questions',$grp);
            return  $this->db->insert_id();
        }
        public function group_id()
        {
            $grp = $this->db->get('users_groups')->result_array();
            return $grp;
        }
        public function get_questions()
        {

            return $this->db->select('q.*,sc.name as name')
                    ->join('users_groups as sc','sc.id=q.users_group_id','left')
                    ->order_by('q.status', "DESC")
                    ->get('questions as q')
                    ->result_array();
                    
        }
        public function edit_question($id)
        {
            $this->db->where('id', $id);
            $query = $this->db->get('question');
            return $query->row_array();
            echo json_encode($query);exit;
                    
        }
    }
    
?>