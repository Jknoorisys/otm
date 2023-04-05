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
                    ->get('questions as q')
                    ->result_array();
                    
        }

        public function edit_question($id)
        {
            $query = $this->db->where('id', $id)->get('question');
            return $query->row_array();                    
        }

        public function update_question($id,$data)
        {
            $query = $this->db->where('id',$id)->update('questions',$data);
            return $query;
        }
        
        public function change_status($id,$status)
        {
            $query = $this->db->set('status', $status)->where('id',$id)->update('questions');
            return $query;
        }

        public function get_report()
        {
            

            return $this->db->select('r.*,q.month_start as smonth,q.month_end as emonth,q.year as qyear,u.name as uname')
                    ->join('quarters as q','q.id=r.quarter_id','left')
                    ->join('users as u','u.id=r.user_id','left')
                    ->get('reports as r')
                    ->result_array();
        }
        
        public function get_username()
        {
            return $this->db->get('users')
                    ->result_array();
        }

        public function get_month()
        {
           
        }
        public function save_quarter($data)
        {
            $this->db->insert('quarters',$data);
            return  $this->db->insert_id();
        }
        public function list_quarter()
        {
            return $this->db->get('quarters')->result_array();
        }
        public function change_quarter_status($id,$status)
        {
            $query = $this->db->set('status', $status)->where('id',$id)->update('quarters');
            return $query;
        }
        public function change_publish_key($id,$publish)
        {
            $query = $this->db->set('is_published', $publish)->where('id',$id)->update('quarters');
            return $query;
        }
    }
    
?>