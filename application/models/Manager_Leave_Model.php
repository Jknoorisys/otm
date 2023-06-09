<?php
	class Manager_Leave_Model extends CI_Model{

		public function add_leave($leave_data){
			$this->db->insert('user_leave',$leave_data);
			return $this->db->insert_id();
		}

		public function total_requested_leave_days($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users as users','users.id=sc.user_id','left');
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			return $this->db->get()->result_array();
		}

		public function pending_leave(){
			return $this->db->select('sc.*,users.name as user_name')
							->where('sc.leave_status','0')
							->join('users as users','users.id=sc.user_id','left')
							->order_by("sc.from_date", "DESC")
							->get("user_leave as sc")
							->result_array();
		}

		public function filtered_pending_leave($filter, $tl_id, $manager_email){
			if(!empty($filter['name'])) {
				$this->db->where("users.id",$filter['name']);
			}

			if(!empty($filter['leave_type'])) {
				$this->db->group_start();
				$this->db->where("sc.is_paid",$filter['leave_type']);
				$this->db->group_end();
			}

			if(!empty($filter['from_date']) && !empty($filter['to_date'])) {
				$min =  (date('Y-m-d', strtotime($filter['from_date'] )));
				$max =  (date('Y-m-d', strtotime($filter['to_date'] )));
				$this->db->where('sc.leave_date >=', $min);
				$this->db->where('sc.leave_date <=', $max);
			}else{

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				// 	$this->db->where_in("users.users_group_id",['13','4']);
				// }
	
				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->join('users_balance_leave as balance','balance.user_id=sc.user_id','left');
				$this->db->select('sc.*,users.name as user_name, balance.balance_leave, balance.paid_leave, balance.unpaid_leave');
				$this->db->from('user_leave as sc');
				$this->db->join('users as users','users.id=sc.user_id','left');
				$this->db->where('MONTH(leave_date) >=', date('m'));
				$this->db->where('YEAR(leave_date) >=', date('Y'));			
				$this->db->where('sc.leave_status', '0');
				
				return $this->db->get()->result_array();
			}

			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users_balance_leave as balance','balance.user_id=sc.user_id','left');
			$this->db->select('sc.*,users.name as user_name, balance.balance_leave, balance.paid_leave, balance.unpaid_leave');
			$this->db->from('user_leave as sc');
			$this->db->join('users as users','users.id=sc.user_id','left');	
			$this->db->where('sc.leave_status', '0');
			
			return $this->db->get()->result_array();
	   }

		public function total_pending_leave_days($tl_id,$manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users as users','users.id=sc.user_id','left');
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '0');
			return $this->db->get()->result_array();
		}

		public function total_pending_leave_filtered_days($filter, $tl_id, $manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("sc.user_id",$filter['name']);
					$this->db->group_end();
				}

				if(!empty($filter['leave_type'])) {
					$this->db->group_start();
					$this->db->where("sc.is_paid",$filter['leave_type']);
					$this->db->group_end();
				}
		    }
			
			if(!empty($filter['from_date']) && !empty($filter['to_date'])) {
				$min =  (date('Y-m-d', strtotime($filter['from_date'] )));
				$max =  (date('Y-m-d', strtotime($filter['to_date'] )));
				$this->db->where('sc.leave_date >=', $min);
				$this->db->where('sc.leave_date <=', $max);
			}else{

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				// 	$this->db->where_in("users.users_group_id",['13','4']);
				// }
	
				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->select('SUM(leave_days) as total_days');
				$this->db->from('user_leave as sc');
				$this->db->join('users as users','users.id=sc.user_id','left');
				$this->db->where('MONTH(leave_date) >=', date('m'));
				$this->db->where('YEAR(leave_date) >=', date('Y'));			
				$this->db->where('sc.leave_status', '0');
				
				return $this->db->get()->result_array();
			}

			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users as users','users.id=sc.user_id','left');
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '0');
			return $this->db->get()->result_array();
		}

		public function accepted_leave(){
			return $this->db->select('sc.*,users.name as user_name')
							->where('sc.leave_status','1')
							->join('users as users','users.id=sc.user_id','left')
							->order_by("sc.from_date", "DESC")
							->get("user_leave as sc")
							->result_array();
		}

		public function filtered_accepted_leave($filter, $tl_id, $manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("users.id",$filter['name']);
					$this->db->group_end();
				}

				if(!empty($filter['leave_type'])) {
					$this->db->group_start();
					$this->db->where("sc.is_paid",$filter['leave_type']);
					$this->db->group_end();
				}
		    }

			if(!empty($filter['from_date']) && !empty($filter['to_date'])) {
				$min =  (date('Y-m-d', strtotime($filter['from_date'] )));
				$max =  (date('Y-m-d', strtotime($filter['to_date'] )));
				$this->db->where('sc.leave_date >=', $min);
				$this->db->where('sc.leave_date <=', $max);
			}else{
				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				// 	$this->db->where_in("users.users_group_id",['13','4']);
				// }
	
				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->join('users_balance_leave as balance','balance.user_id=sc.user_id','left');
				$this->db->select('sc.*,users.name as user_name, balance.balance_leave, balance.paid_leave, balance.unpaid_leave');
				$this->db->from('user_leave as sc');
				$this->db->order_by("sc.from_date", "DESC");
				$this->db->where('MONTH(leave_date) >=', date('m'));
				$this->db->where('YEAR(leave_date) >=', date('Y'));
				$this->db->where('leave_status', '1');
				$this->db->join('users as users','users.id=sc.user_id','left');
					
				return $this->db->get()->result_array();
			}

			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users_balance_leave as balance','balance.user_id=sc.user_id','left');
			$this->db->select('sc.*,users.name as user_name, balance.balance_leave, balance.paid_leave, balance.unpaid_leave');
			$this->db->from('user_leave as sc');
			$this->db->order_by("sc.from_date", "DESC");
			$this->db->where('leave_status', '1');
			$this->db->join('users as users','users.id=sc.user_id','left');
								
			return $this->db->get()->result_array();
	   }
		
		public function total_accepted_leave_days($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users as users','users.id=sc.user_id','left');
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '1');
			return $this->db->get()->result_array();
		}

		public function total_accepted_leave_filtered_days($filter, $tl_id, $manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("sc.user_id",$filter['name']);
					$this->db->group_end();
				}

				if(!empty($filter['leave_type'])) {
					$this->db->group_start();
					$this->db->where("sc.is_paid",$filter['leave_type']);
					$this->db->group_end();
				}
		    }

			if(!empty($filter['from_date']) && !empty($filter['to_date'])) {
				$min =  (date('Y-m-d', strtotime($filter['from_date'] )));
				$max =  (date('Y-m-d', strtotime($filter['to_date'] )));
				$this->db->where('sc.leave_date >=', $min);
				$this->db->where('sc.leave_date <=', $max);
			}else{

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				// 	$this->db->where_in("users.users_group_id",['13','4']);
				// }
	
				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}
				
				$this->db->select('SUM(leave_days) as total_days');
				$this->db->from('user_leave as sc');
				$this->db->join('users as users','users.id=sc.user_id','left');
				$this->db->where('MONTH(leave_date) >=', date('m'));
				$this->db->where('YEAR(leave_date) >=', date('Y'));			
				$this->db->where('sc.leave_status', '1');
				
				return $this->db->get()->result_array();
			}

			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users as users','users.id=sc.user_id','left');
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '1');
			return $this->db->get()->result_array();
		}

		public function rejected_leave(){
			return $this->db->select('sc.*,users.name as user_name')
							->where('sc.leave_status','2')
							->join('users as users','users.id=sc.user_id','left')
							->order_by("sc.from_date", "DESC")
							->get("user_leave as sc")
							->result_array();
		}

		public function filtered_rejected_leave($filter, $tl_id, $manager_email)
		{
            if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("users.id",$filter['name']);
					$this->db->group_end();
				}
		    }
			if(!empty($filter['from_date']) && !empty($filter['to_date'])) {
				$min =  (date('Y-m-d', strtotime($filter['from_date'] )));
				$max =  (date('Y-m-d', strtotime($filter['to_date'] )));
				$this->db->where('sc.leave_date >=', $min);
				$this->db->where('sc.leave_date <=', $max);
			}else{

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				// 	$this->db->where_in("users.users_group_id",['13','4']);
				// }
	
				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->join('users_balance_leave as balance','balance.user_id=sc.user_id','left');
				$this->db->select('sc.*,users.name as user_name, balance.balance_leave, balance.paid_leave, balance.unpaid_leave');
				// $this->db->select('sc.*,users.name as user_name');
				$this->db->from('user_leave as sc');
				$this->db->join('users as users','users.id=sc.user_id','left');
				$this->db->where('MONTH(leave_date) >=', date('m'));
				$this->db->where('YEAR(leave_date) >=', date('Y'));			
				$this->db->where('sc.leave_status', '2');
				
				return $this->db->get()->result_array();
			}

			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users_balance_leave as balance','balance.user_id=sc.user_id','left');
			$this->db->select('sc.*,users.name as user_name, balance.balance_leave, balance.paid_leave, balance.unpaid_leave');
			// $this->db->select('sc.*,users.name as user_name');
			$this->db->from('user_leave as sc');
			$this->db->join('users as users','users.id=sc.user_id','left');			
			$this->db->where('sc.leave_status', '2');
			
			return $this->db->get()->result_array();
		}
		
		public function total_rejected_leave_days($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users as users','users.id=sc.user_id','left');
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '2');
			return $this->db->get()->result_array();
		}

		public function total_rejected_leave_filtered_days($filter, $tl_id, $manager_email){
			if(!empty($filter) && is_array($filter) ) {
				if(!empty($filter['name'])) {
					$this->db->group_start();
					$this->db->where("sc.user_id",$filter['name']);
					$this->db->group_end();
				}
		    }
			if(!empty($filter['from_date']) && !empty($filter['to_date'])) {
				$min =  (date('Y-m-d', strtotime($filter['from_date'] )));
				$max =  (date('Y-m-d', strtotime($filter['to_date'] )));
				$this->db->where('sc.leave_date >=', $min);
				$this->db->where('sc.leave_date <=', $max);
			}else{

				if(!empty($tl_id)) {
					$this->db->where("users.tl_id",$tl_id);
				}

				// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
				// 	$this->db->where_in("users.users_group_id",['13','4']);
				// }
	
				if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
					$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
				}

				$this->db->select('SUM(leave_days) as total_days');
				$this->db->from('user_leave as sc');
				$this->db->join('users as users','users.id=sc.user_id','left');
				$this->db->where('MONTH(leave_date) >=', date('m'));
				$this->db->where('YEAR(leave_date) >=', date('Y'));			
				$this->db->where('sc.leave_status', '2');
				
				return $this->db->get()->result_array();
			}

			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			$this->db->join('users as users','users.id=sc.user_id','left');
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '2');
			return $this->db->get()->result_array();
		}

		// email
		public function getUserEmail($id){
				$this->db->select('sc.*,users.name as user_name, users.email as user_email, users.id as user_id');
				$this->db->from('user_leave as sc');
				$this->db->where('sc.id', $id);
				$this->db->join('users as users','users.id=sc.user_id','left');
				return $this->db->get()->row_array();
		}

		public function accept_user_leave($data, $id){
			return $this->db->set($data)
							->where('id' , $id)
							->update('user_leave');

		}
		
		public function reject_user_leave($data, $id){
			return $this->db->set($data)
							->where('id' , $id)
							->update('user_leave');
		}

		function delete_leave($id){
			return $this->db->where('id', $id)
						->delete('user_leave');
		}

		public function requested_leave_of_current_month($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(leave_days) as total_days')
							->join('users as users','users.id=sc.user_id','left')
							->where('MONTH(sc.leave_date)', date('m'))
							->where('YEAR(sc.leave_date)', date('Y'))
							->get("user_leave as sc")
							->result_array();
		}

		public function pending_leave_of_current_month($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(leave_days) as total_days')
							->join('users as users','users.id=sc.user_id','left')
							->where('MONTH(sc.leave_date)', date('m'))
							->where('YEAR(sc.leave_date)', date('Y'))
							->where('sc.leave_status', '0')
							->get("user_leave as sc")
							->result_array();
		}

		public function accepted_leave_of_current_month($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(leave_days) as total_days')
							->join('users as users','users.id=sc.user_id','left')
							->where('MONTH(sc.leave_date)', date('m'))
							->where('YEAR(sc.leave_date)', date('Y'))
							->where('sc.leave_status', '1')
							->get("user_leave as sc")
							->result_array();
		}

		public function rejected_leave_of_current_month($tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('SUM(leave_days) as total_days')
							->join('users as users','users.id=sc.user_id','left')
							->where('MONTH(sc.leave_date)', date('m'))
							->where('YEAR(sc.leave_date)', date('Y'))
							->where('sc.leave_status', '2')
							->get("user_leave as sc")
							->result_array();
		}

		public function today($current_date, $tl_id, $manager_email){
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('sc.*,users.name as user_name')
							->where('leave_status' , 1)
							->where('DATE(leave_date)' , $current_date)
							->join('users as users','users.id=sc.user_id','left')
							->get('user_leave as sc')
							->result_array();
		}

		public function tomorrow($tomorrow_date, $tl_id, $manager_email)
		{
			if(!empty($tl_id)) {
				$this->db->where("users.tl_id",$tl_id);
			}

			// if(!empty($manager_email) && $manager_email == 'pm@noorisys.com') {
			// 	$this->db->where_in("users.users_group_id",['13','4']);
			// }

			if(!empty($manager_email) && $manager_email == 'imran@noorisys.com') {
				$this->db->where_not_in("users.users_group_id",['2','3','5','7','9','11']);
			}

			return $this->db->select('sc.*,users.name as user_name')
							->where('leave_status' , 1)
							->where('DATE(leave_date)' , $tomorrow_date)
							->join('users as users','users.id=sc.user_id','left')
							->get('user_leave as sc')
							->result_array();
		}

		public function paid_leaves($id)
		{
			$this->db->select('SUM(leave_days) as total_paid_leaves');
			$this->db->from('user_leave');
			$this->db->where('leave_status', '1');
			$this->db->where('is_paid', '1');
			$this->db->where('YEAR(leave_date)', date('Y'));
			$this->db->where('user_id', $id);
			return $this->db->get()->row_array();
		}

		public function update_user($leave_days, $id)
		{
			return $this->db->set('balance_leave', 'balance_leave-'. $leave_days, FALSE)
							->where('id' , $id)
							->update('users');
		}

		public function update_user_leave($leave_days, $id)
		{
			return $this->db->set('balance_leave', 'balance_leave+'. $leave_days, FALSE)
							->where('id' , $id)
							->update('users');
		}

		public function get_leave($id){
			return $this->db->select('*')
						->from('user_leave')
						->where('id', $id)
						->get()->row_array();
		}
		
		
		public function accept_user_ot($data, $id){
			return $this->db->set($data)
							->where('id' , $id)
							->update('user_leave');

		}

		public function reject_user_ot($data, $id){
			return $this->db->set($data)
							->where('id' , $id)
							->update('user_leave');
		}

		// count user paid leaves
		public function user_paid_leave($user_id)
		{
			$this->db->select('SUM(paid_days) as total_paid_leaves');
			$this->db->from('user_leave');
			$this->db->where('leave_status', '1');
			$this->db->where('is_paid', 'paid');
			$this->db->where('YEAR(leave_date)', date('Y'));
			$this->db->where('user_id', $user_id);
			return $this->db->get()->row_array();
		}

		// count user unpaid leaves
		public function user_unpaid_leave($user_id)
		{
			$this->db->select('SUM(unpaid_days) as total_unpaid_leaves');
			$this->db->from('user_leave');
			$this->db->where('leave_status', '1');
			$this->db->where('YEAR(leave_date)', date('Y'));
			$this->db->where('user_id', $user_id);
			return $this->db->get()->row_array();
		}

		// update user balnce leave details
		public function balance_leave_details($data, $user_id, $user_paid_leave)
		{
			return $this->db->set($data)
							->set('balance_leave', 'balance_leave-'. $user_paid_leave, FALSE)
							->where('user_id' , $user_id)
							->update('users_balance_leave');
		}

		// update user balnce leave details
		public function restore_balance_leave_details($data, $user_id, $leave_days)
		{
			return $this->db->set($data)
							->set('balance_leave', 'balance_leave+'. $leave_days, FALSE)
							->where('user_id' , $user_id)
							->update('users_balance_leave');
		}

		// update user balnce leave details
		public function get_user_balance_leave($user_id)
		{
			$this->db->select('*');
			$this->db->from('users_balance_leave');
			$this->db->where('user_id', $user_id);
			return $this->db->get()->row_array();
		}

		public function leave($filter)
		{
			if (!empty($filter['name'])) {
				$this->db->where('user.id', $filter['name']);
				// die("rh");
			}

			$balance_leave = $this->db->select('balance.*,user.name as uname')
							->join('users as user','user.id=balance.user_id','left') 
							->order_by('user.id')
							->get('users_balance_leave as balance')
							->result_array();


				if ($filter && $filter['leave_month']) {
					// echo json_encode($filter['year']);exit;

					$i =0;
					foreach ($balance_leave as $leave ) {
						$new_balance_leave = $this->db->select('SUM(paid_days) as paid_leave,SUM(unpaid_days) as unpaid_leave')
							->where('user_id', $leave['user_id'])
							->where('leave_month', $filter['leave_month'])
							->where('leave_year', $filter['year'])
							->get('user_leave')
							->row_array();

						$balance_leave[$i]['paid_leave'] = $new_balance_leave['paid_leave'] == null ?  '0' : $new_balance_leave['paid_leave'];
						$balance_leave[$i]['unpaid_leave'] = $new_balance_leave['unpaid_leave'] == null ?  '0' : $new_balance_leave['unpaid_leave'];
						
					
						$i++;
					}
				}
				
			return $balance_leave;
		}

	}
?>