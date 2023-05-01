<?php
	class Manager_model extends CI_Model{
		public function login($email, $pass){
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
							->where('projects_status_id',1)
							->or_where('projects_status_id',2)
							->order_by('name',"asc")
							->get('projects')
							->result_array();
		}

		public function add_ot($ot_data){
			$this->db->insert('user_ot', $ot_data);
			return $this->db->insert_id();
		}

		public function get_user_details($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('*')
							->order_by('name')
							//->where('active', 1)
							->get('users')
							->result_array();
		}

		public function requested_ot_of_current_month($tl_id, $manager_email){
			
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(ot_hours)')
							->where('MONTH(sc.ot_date)', date('m'))
							->join('users as users','users.id=sc.user_id','left')
							->where('YEAR(sc.ot_date)', date('Y'))
							->get("user_ot as sc")
							->result_array();
		}

		public function pending_ot_of_current_month($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(ot_hours)')
							->where('MONTH(sc.ot_date)', date('m'))
							->join('users as users','users.id=sc.user_id','left')
							->where('YEAR(sc.ot_date)', date('Y'))
							->where('sc.ot_status', '0')
							->get("user_ot as sc")
							->result_array();
		}

		public function accepted_ot_of_current_month($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(ot_hours)')
							->join('users as users','users.id=sc.user_id','left')
							->where('MONTH(sc.ot_date)', date('m'))
							->where('YEAR(sc.ot_date)', date('Y'))
							->where('sc.ot_status', '1')
							->get("user_ot as sc")
							->result_array();
		}

		public function rejected_ot_of_current_month($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(ot_hours)')
							->join('users as users','users.id=sc.user_id','left')
							->where('MONTH(sc.ot_date)', date('m'))
							->where('YEAR(sc.ot_date)', date('Y'))
							->where('sc.ot_status', '2')
							->get("user_ot as sc")
							->result_array();
		}
		
		public function requested_ot($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(ot_hours)')
							->join('users as users','users.id=sc.user_id','left')
							->get("user_ot as sc")
							->result_array();
		}

		public function pending_ot($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(ot_hours)')
							->join('users as users','users.id=sc.user_id','left')
							->where('sc.ot_status', '0')
							->get("user_ot as sc")
							->result_array();
		}

		public function accepted_ot($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(ot_hours)')
							->join('users as users','users.id=sc.user_id','left')
							->where('sc.ot_status', '1')
							->get("user_ot as sc")
							->result_array();
		}

		public function rejected_ot($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				$this->db->where_in("users.users_group_id",['13','4']);
			}

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(ot_hours)')
							->join('users as users','users.id=sc.user_id','left')
							->where('sc.ot_status', '2')
							->get("user_ot as sc")
							->result_array();
		}


		public function total_pending_ot_hours($filter, $tl_id,$manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("users.id",$filter['name']);
					$this->db->group_end();
				}
				
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

					if(!empty($tl_id)) {
						$this->db->where("users.tl_id",$tl_id);
					}

					if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
						$this->db->where_in("users.users_group_id",['13','4']);
					}

					if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
						$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
					}

					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->join('users as users','users.id=sc.user_id','left');
					$this->db->where('MONTH(ot_date) >=', date('m'));
					$this->db->where('YEAR(ot_date) >=', date('Y'));
					$this->db->select_sum('sc.ot_hours');
					$this->db->where('sc.ot_status', '0');
					
					return $this->db->get()->result_array();
				}

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
					$this->db->where_in("users.users_group_id",['13','4']);
				}

				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
                $this->db->join('users as users','users.id=sc.user_id','left');
				$this->db->select_sum('sc.ot_hours');
				$this->db->where('sc.ot_status', '0');
				
				return $this->db->get()->result_array();
			}			
		}

		public function total_accepted_ot_hours($filter, $tl_id, $manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("users.id",$filter['name']);
					$this->db->group_end();
				}
				
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

					if(!empty($tl_id)) {
						$this->db->where("users.tl_id",$tl_id);
					}

					if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
						$this->db->where_in("users.users_group_id",['13','4']);
					}

					if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
						$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
					}

					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->join('users as users','users.id=sc.user_id','left');
					$this->db->where('MONTH(ot_date) >=', date('m'));
					$this->db->where('YEAR(ot_date) >=', date('Y'));
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
					$this->db->select_sum('sc.ot_hours');
					$this->db->where('sc.ot_status', '1');
					
					return $this->db->get()->result_array();

				}

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
					$this->db->where_in("users.users_group_id",['13','4']);
				}

				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
                $this->db->join('users as users','users.id=sc.user_id','left');
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
				$this->db->select_sum('sc.ot_hours');
				$this->db->where('sc.ot_status', '1');
				
				return $this->db->get()->result_array();
			}			
		}

		public function total_rejected_ot_hours($filter, $tl_id, $manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("users.id",$filter['name']);
					$this->db->group_end();
				}
				
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
					if(!empty($tl_id)) {
						$this->db->where("users.tl_id",$tl_id);
					}

					if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
						$this->db->where_in("users.users_group_id",['13','4']);
					}
		
					if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
						$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
					}
					
					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->join('users as users','users.id=sc.user_id','left');
					$this->db->where('MONTH(ot_date) >=', date('m'));
					$this->db->where('YEAR(ot_date) >=', date('Y'));
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
					$this->db->select_sum('sc.ot_hours');
					$this->db->where('sc.ot_status', '2');
					
					return $this->db->get()->result_array();
				}

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
					$this->db->where_in("users.users_group_id",['13','4']);
				}
	
				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
                $this->db->join('users as users','users.id=sc.user_id','left');
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');			
				$this->db->select_sum('sc.ot_hours');
				$this->db->where('sc.ot_status', '2');
				
				return $this->db->get()->result_array();
			}			
		}

		public function accept_user_ot($data, $id){
			return $this->db->set($data)
							->where('id' , $id)
							->update('user_ot');

		}
		
		// email
		public function getUserEmail($id){
			        $this->db->select('sc.*,users.name as user_name, projects.name as project_name, users.email as user_email');
					$this->db->from('user_ot as sc');
					$this->db->where('sc.id', $id);
					$this->db->join('users as users','users.id=sc.user_id','left');
					$this->db->join('projects as projects','projects.id = sc.project_id','left');					

					return $this->db->get()->row_array();
		}

		public function reject_user_ot($data, $id){
			return $this->db->set($data)
							->where('id' , $id)
							->update('user_ot');
		}

		public function change_password($login_id, $user_pass){
            $this->db->where('id', $login_id);
            $this->db->update('users', $user_pass);
        }

		public function filtered_pending_ot($filter, $tl_id,$manager_email){

			if(!empty($filter) && is_array($filter) ) {

				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("users.id",$filter['name']);
					$this->db->group_end();
				}
				
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
					if(!empty($tl_id)) {
						$this->db->where("users.tl_id",$tl_id);
					}

					if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
						$this->db->where_in("users.users_group_id",['13','4']);
					}

					if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
						$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
					}

					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->order_by("sc.ot_date", "DESC");
					$this->db->where('MONTH(ot_date) >=', date('m'));
					$this->db->where('YEAR(ot_date) >=', date('Y'));
					$this->db->where('ot_status', '0');
					$this->db->join('users as users','users.id=sc.user_id','left');
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

					return $this->db->get()->result_array();
				}

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
					$this->db->where_in("users.users_group_id",['13','4']);
				}

				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
				$this->db->order_by("sc.ot_date", "DESC");
                $this->db->where('ot_status', '0');
                $this->db->join('users as users','users.id=sc.user_id','left');
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

				return $this->db->get()->result_array();

			}
		}

		public function filtered_accepted_ot($filter, $tl_id, $manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("users.id",$filter['name']);
					$this->db->group_end();
				}
				
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
					if(!empty($tl_id)) {
						$this->db->where("users.tl_id",$tl_id);
					}

					if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
						$this->db->where_in("users.users_group_id",['13','4']);
					}

					if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
						$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
						$this->db->where("users.users_group_id !=",'11');
					}

					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->order_by("sc.ot_date", "DESC");
					$this->db->where('MONTH(ot_date) >=', date('m'));
					$this->db->where('YEAR(ot_date) >=', date('Y'));
					$this->db->where('ot_status', '1');
					$this->db->join('users as users','users.id=sc.user_id','left');
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

					return $this->db->get()->result_array();
				}
			
				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
					$this->db->where_in("users.users_group_id",['13','4']);
				}

				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
				$this->db->order_by("sc.ot_date", "DESC");
                $this->db->where('ot_status', '1');
                $this->db->join('users as users','users.id=sc.user_id','left');
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

				return $this->db->get()->result_array();
			}

		}

		public function filtered_rejected_ot($filter, $tl_id, $manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("users.id",$filter['name']);
					$this->db->group_end();
				}
				
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
					if(!empty($tl_id)) {
						$this->db->where("users.tl_id",$tl_id);
					}

					if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
						$this->db->where_in("users.users_group_id",['13','4']);
					}

					if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
						$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
					}

					$this->db->select('sc.*,users.name as user_name');
					$this->db->from('user_ot as sc');
					$this->db->order_by("sc.ot_date", "DESC");
					$this->db->where('MONTH(ot_date) >=', date('m'));
					$this->db->where('YEAR(ot_date) >=', date('Y'));
					$this->db->where('ot_status', '2');
					$this->db->join('users as users','users.id=sc.user_id','left');
					// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

					return $this->db->get()->result_array();
				}
			
				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
					$this->db->where_in("users.users_group_id",['13','4']);
				}

				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->select('sc.*,users.name as user_name');
                $this->db->from('user_ot as sc');
				$this->db->order_by("sc.ot_date", "DESC");
                $this->db->where('ot_status', '2');
                $this->db->join('users as users','users.id=sc.user_id','left');
				// $this->db->join('projects as projects','projects.id = sc.project_id','left');					

				return $this->db->get()->result_array();
			}

		}

		function total_rows(){
            return $this->db->where('ot_status', '0')
						->get('user_ot')
             			->num_rows();
                
        }

		function limit($limit, $offset){
            return $this->db->limit($limit, $offset)
			         		->where('ot_status', '0')
           			 		->get("user_ot")
             		 		->result();
        }

		function delete_ot($id){
			return $this->db->where('id', $id)
						->delete('user_ot');
		}
		public function tl_add_user($user,$password)
		{
			$user['pass'] = md5($password);
            $user['users_group_id'] = '2';
            $this->db->insert('users',$user);
            return  $this->db->insert_id();
		}

	}