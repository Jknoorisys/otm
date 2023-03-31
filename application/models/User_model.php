<?php
    class User_model extends CI_Model{

        public function login($email, $pass){
				return $this->db->where('email', $email)
								->where('pass', md5($pass))
								->get('users')
								->row_array();	
		}
		
		public function login_old($email, $pass){
				return $this->db->where('email', $email)
								->where('pass', md5($pass))
								->where('active', 1)
								->get('users')
								->row_array();	
		}
		
        public function get_user($user_id){
			return $this->db->where('id', $user_id)
            			->get('users')
              			->row_array();
		}

		public function get_project_details(){
			return $this->db->select('*')
							->where('projects_status_id', 1)
							->or_where('projects_status_id', 2)
							->order_by('name', 'asc')
							->get('projects')
              				->result_array();
		}

		public function total_pending_ot_hours($filter, $login_id){
			if(!empty($filter) && is_array($filter) ) {
				
				if(!empty($filter['project'])) {
					$this->db->group_start();
					$this->db->like("sc.project_name",$filter['project']);
					$this->db->group_end();
				}

				if(!empty($filter['start_date']) && !empty($filter['end_date'])) {
					$min =  (date('Y-m-d', strtotime($filter['start_date'] )));
					$max =  (date('Y-m-d', strtotime($filter['end_date'] )));
					$this->db->where('sc.ot_date >=', $min);
					$this->db->where('sc.ot_date <=', $max);
				}else{
					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->where('MONTH(ot_date)', date('m'));
					$this->db->where('YEAR(ot_date)', date('Y'));
					$this->db->join('users as users','users.id=sc.user_id','left');
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
					$this->db->select_sum('sc.ot_hours');
					$this->db->where('sc.ot_status', '0');
					$this->db->where('user_id', $login_id);
					
					return $this->db->get()->result_array();
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
                $this->db->join('users as users','users.id=sc.user_id','left');
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
				$this->db->select_sum('sc.ot_hours');
				$this->db->where('sc.ot_status', '0');
				$this->db->where('user_id', $login_id);
				
				return $this->db->get()->result_array();
			}			
		}

		public function total_accepted_ot_hours($filter, $login_id){
			if(!empty($filter) && is_array($filter) ) {
				
				if(!empty($filter['project'])) {
					$this->db->group_start();
					$this->db->like("sc.project_name",$filter['project']);
					$this->db->group_end();
				}

				if(!empty($filter['start_date']) && !empty($filter['end_date'])) {
					$min =  (date('Y-m-d', strtotime($filter['start_date'] )));
					$max =  (date('Y-m-d', strtotime($filter['end_date'] )));
					$this->db->where('sc.ot_date >=', $min);
					$this->db->where('sc.ot_date <=', $max);
				}else{
					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->where('MONTH(ot_date)', date('m'));
					$this->db->where('YEAR(ot_date)', date('Y'));
					$this->db->join('users as users','users.id=sc.user_id','left');
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
					$this->db->select_sum('sc.ot_hours');
					$this->db->where('sc.ot_status', '1');
					$this->db->where('user_id', $login_id);
					
					return $this->db->get()->result_array();
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
                $this->db->join('users as users','users.id=sc.user_id','left');
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
				$this->db->select_sum('sc.ot_hours');
				$this->db->where('sc.ot_status', '1');
				$this->db->where('user_id', $login_id);
				
				return $this->db->get()->result_array();
			}			
		}

		public function total_rejected_ot_hours($filter, $login_id){
			if(!empty($filter) && is_array($filter) ) {
				
				if(!empty($filter['project'])) {
					$this->db->group_start();
					$this->db->like("sc.project_name",$filter['project']);
					$this->db->group_end();
				}

				if(!empty($filter['start_date']) && !empty($filter['end_date'])) {
					$min =  (date('Y-m-d', strtotime($filter['start_date'] )));
					$max =  (date('Y-m-d', strtotime($filter['end_date'] )));
					$this->db->where('sc.ot_date >=', $min);
					$this->db->where('sc.ot_date <=', $max);
				}else{
					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->where('MONTH(ot_date)', date('m'));
					$this->db->where('YEAR(ot_date)', date('Y'));
					$this->db->join('users as users','users.id=sc.user_id','left');
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
					$this->db->select_sum('sc.ot_hours');
					$this->db->where('sc.ot_status', '2');
					$this->db->where('user_id', $login_id);
					
					return $this->db->get()->result_array();
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
                $this->db->join('users as users','users.id=sc.user_id','left');
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
				$this->db->select_sum('sc.ot_hours');
				$this->db->where('sc.ot_status', '2');
				$this->db->where('user_id', $login_id);
				
				return $this->db->get()->result_array();
			}			
		}

		public function add_ot($ot_data){
			return $this->db->insert('user_ot', $ot_data);
		}

		public function requested_ot($login_id){
			return $this->db->select('SUM(ot_hours)')
							->where('user_id', $login_id)
							->get("user_ot")
							->result_array();
		}

		public function pending_ot($login_id){
			return $this->db->select('SUM(ot_hours)')
							->where('user_id', $login_id)
							->where('ot_status', '0')
							->get("user_ot")
							->result_array();
		}

		public function accepted_ot($login_id){
			return $this->db->select('SUM(ot_hours)')
							->where('user_id', $login_id)
							->where('ot_status', '1')
							->get("user_ot")
							->result_array();
		}

		public function rejected_ot($login_id){
			return $this->db->select('SUM(ot_hours)')
							->where('user_id', $login_id)
							->where('ot_status', '2')
							->get("user_ot")
							->result_array();
		}


        function change_password($login_id, $user_pass){
            $this->db->where('id', $login_id);
            $this->db->update('users', $user_pass);
        }

		public function filtered_pending_ot($filter, $login_id){
			if(!empty($filter) && is_array($filter) ) {
				
				if(!empty($filter['project'])) {
					$this->db->group_start();
					$this->db->like("sc.project_name",$filter['project']);
					$this->db->group_end();
				}

				if(!empty($filter['start_date']) && !empty($filter['end_date'])) {
					$min =  (date('Y-m-d', strtotime($filter['start_date'] )));
					$max =  (date('Y-m-d', strtotime($filter['end_date'] )));
					$this->db->where('sc.ot_date >=', $min);
					$this->db->where('sc.ot_date <=', $max);
				}else{
					$this->db->select('sc.*');
					$this->db->where('MONTH(ot_date)', date('m'));
					$this->db->where('YEAR(ot_date)', date('Y'));
					$this->db->from('user_ot as sc');
					$this->db->order_by("sc.ot_date", "DESC");
					$this->db->where('ot_status', '0');
					$this->db->where('user_id', $login_id);
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

					return $this->db->get()->result_array();
				}
			
				$this->db->select('sc.*');
                $this->db->from('user_ot as sc');
				$this->db->order_by("sc.ot_date", "DESC");
                $this->db->where('ot_status', '0');
				$this->db->where('user_id', $login_id);
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

				return $this->db->get()->result_array();
			}
		}

		public function filtered_accepted_ot($filter, $login_id){
			if(!empty($filter) && is_array($filter) ) {
				
				if(!empty($filter['project'])) {
					$this->db->group_start();
					$this->db->like("sc.project_name",$filter['project']);
					$this->db->group_end();
				}

				if(!empty($filter['start_date']) && !empty($filter['end_date'])) {
					$min =  (date('Y-m-d', strtotime($filter['start_date'] )));
					$max =  (date('Y-m-d', strtotime($filter['end_date'] )));
					$this->db->where('sc.ot_date >=', $min);
					$this->db->where('sc.ot_date <=', $max);
				}else{
					$this->db->select('sc.*');
					$this->db->from('user_ot as sc');
					$this->db->order_by("sc.ot_date", "DESC");
					$this->db->where('MONTH(ot_date)', date('m'));
					$this->db->where('YEAR(ot_date)', date('Y'));
					$this->db->where('ot_status', '1');
					$this->db->where('user_id', $login_id);
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

					return $this->db->get()->result_array();
				}
			
				$this->db->select('sc.*');
                $this->db->from('user_ot as sc');
				$this->db->order_by("sc.ot_date", "DESC");
                $this->db->where('ot_status', '1');
				$this->db->where('user_id', $login_id);
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

				return $this->db->get()->result_array();
			}
		}

		public function filtered_rejected_ot($filter, $login_id){
			if(!empty($filter) && is_array($filter) ) {
				
				if(!empty($filter['project'])) {
					$this->db->group_start();
					$this->db->like("sc.project_name",$filter['project']);
					$this->db->group_end();
				}

				if(!empty($filter['start_date']) && !empty($filter['end_date'])) {
					$min =  (date('Y-m-d', strtotime($filter['start_date'] )));
					$max =  (date('Y-m-d', strtotime($filter['end_date'] )));
					$this->db->where('sc.ot_date >=', $min);
					$this->db->where('sc.ot_date <=', $max);
				}else{
					$this->db->select('sc.*');
					$this->db->from('user_ot as sc');
					$this->db->order_by("sc.ot_date", "DESC");
					$this->db->where('MONTH(ot_date)', date('m'));
					$this->db->where('YEAR(ot_date)', date('Y'));
					$this->db->where('ot_status', '2');
					$this->db->where('user_id', $login_id);
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

					return $this->db->get()->result_array();
				}
			
				$this->db->select('sc.*');
                $this->db->from('user_ot as sc');
				$this->db->order_by("sc.ot_date", "DESC");
                $this->db->where('ot_status', '2');
				$this->db->where('user_id', $login_id);
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

				return $this->db->get()->result_array();
			}
		}

		function delete($id){
            return $this->db->where('id', $id)
           				->delete('user_ot');
        }
    }
?>