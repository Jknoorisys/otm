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

        public function get_filtered_report($filter)
        {
            $this->db->select('r.*,q.month_start as smonth,q.month_end as emonth,q.year as qyear,users.name as uname')
            ->join('quarters as q','q.id=r.quarter_id','left')
            ->join('users','users.id=r.user_id','left');

            if(!empty($filter['name'])) {
				$this->db->where("r.user_id",$filter['name']);
			}

            if(!empty($filter['month_start'])) {
				$this->db->where("q.month_start",$filter['month_start']);
			}

            if(!empty($filter['month_end'])) {
				$this->db->where("q.month_end",$filter['month_end']);
			}
            
            return $this->db->get('reports as r')
                    ->result_array();
        }
        
        public function get_username()
        {
            return $this->db->where_in('users_group_id',['2','4','13'])
                    ->get('users')
                    ->result_array();
        }
        public function change_quarter_status($id,$status)
        {
            $query = $this->db->set('status', $status)->where('id',$id)->update('quarters');
            return $query;
        }
        public function change_publish_key($id,$publish)
        {
            if ($publish == 1) {
                $this->db->set('already_published', 'yes');
            }
            $query = $this->db->set('is_published', $publish)->where('id',$id)->update('quarters');
            return $query;
        }
        public function list_quarter()
        {
            $query = $this->db->get('quarters')->result_array();
            return $query;
        }
        public function save_quarter($month)
        {
            $this->db->insert('quarters',$month);
            return  $this->db->insert_id();
        }
        public function is_published()
        {
            return $this->db->where('is_published','1')->get('quarters')->result_array();
        }

        public function is_already_published($id)
        {
            return $this->db->where('already_published','yes')->where('id', $id)->get('quarters')->row_array();
        }
        public function get_tl()
        {
            return $this->db->where('users_group_id','13')->get('users')->result_array();
        }
        public function add_user($data)
        {
            $data['pass'] = md5('123456');
            $data['users_group_id'] = '2';
            $this->db->insert('users',$data);
            return  $this->db->insert_id();
        }
    }
    
?>