<?php

	class User_Leave_Model extends CI_Model{

		public function add_leave($leave_data){
				$this->db->insert('user_leave',$leave_data);
				return  $this->db->insert_id();
		}

		public function total_requested_leave_days($login_id){
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('user_id', $login_id);
			return $this->db->get()->result_array();
							
		}

		public function pending_leave($login_id){
			return $this->db->select('sc.*,users.name as user_name')
							->where('sc.leave_status','0')
							->where('user_id', $login_id)
							->join('users as users','users.id=sc.user_id','left')
							->order_by("sc.from_date", "DESC")
							->get("user_leave as sc")
							->result_array();
		}

			
		public function total_pending_leave_days($login_id){
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '0');
			$this->db->where('user_id', $login_id);
			return $this->db->get()->result_array();
							
		}

		public function accepted_leave($login_id){
			return $this->db->select('sc.*,users.name as user_name')
							->where('sc.leave_status','1')
							->where('user_id', $login_id)
							->join('users as users','users.id=sc.user_id','left')
							->order_by("sc.from_date", "DESC")
							->get("user_leave as sc")
							->result_array();
		}

			
		public function total_accepted_leave_days($login_id){
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '1');
			$this->db->where('user_id', $login_id);
			return $this->db->get()->result_array();
							
		}

		public function rejected_leave($login_id){
			return $this->db->select('sc.*,users.name as user_name')
							->where('sc.leave_status','2')
							->where('user_id', $login_id)
							->join('users as users','users.id=sc.user_id','left')
							->order_by("sc.from_date", "DESC")
							->get("user_leave as sc")
							->result_array();
		}

			
		public function total_rejected_leave_days($login_id){
			$this->db->select('SUM(leave_days) as total_days');
			$this->db->from('user_leave as sc');
			$this->db->where('sc.leave_status', '2');
			$this->db->where('user_id', $login_id);
			return $this->db->get()->result_array();
							
		}

		public function delete_leave($id){
			return $this->db->where('id', $id)
						->delete('user_leave');
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
	}
?>