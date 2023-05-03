<?php

	class User_Leave extends CI_Controller{

		public function __construct(){
			parent::__construct();
			$this->load->model('User_Leave_Model','Leave');
			if($this->session->userdata('isLogin') == 1  && $this->session->userdata('isManager') == 0 && $this->session->userdata('isAdmin') == 0){
				$this->login_id=$this->session->userdata('id');
				$this->load->view('users/header');
				$this->load->view('users/menubar');
			}else{
				redirect(base_url());
			}
		}

		public function get_days(){
			$dates = explode('-', $_POST['dates'], 2);
			$from_date = $dates[0];
			$to_date = $dates[1];

			$s_month = date('M', strtotime($from_date));
			$e_month = date('M', strtotime($to_date));

			$start = new DateTime($from_date);
			$end = new DateTime($to_date);
			$days = $start->diff($end, true)->days; 
			
			$total_days = $days+1; 
			$total_sundays = intval($days / 7) + ($start->format('N') + $days % 7 >= 7);
			$total_days = $total_days - $total_sundays;

			if($s_month == $e_month){
				$first_sat = date('m/d/Y', strtotime('first sat of '.$s_month.' 2022'));          
				$third_sat = date('m/d/Y', strtotime('third sat of '.$s_month.' 2022'));          
				if(strtotime($from_date) <= strtotime($first_sat) && strtotime($to_date) >= strtotime($first_sat)){
					$total_days = $total_days-1;            
				}
				if(strtotime($from_date) <= strtotime($third_sat) && strtotime($to_date) >= strtotime($third_sat)){
					$total_days = $total_days-1;            
				}
			}else{
				$first_sat = date('m/d/Y', strtotime('first sat of '.$s_month.' 2022'));          
				$third_sat = date('m/d/Y', strtotime('third sat of '.$s_month.' 2022'));          
				if(strtotime($from_date) <= strtotime($first_sat) && strtotime($to_date) >= strtotime($first_sat)){
					$total_days = $total_days-1;            
				}
				if(strtotime($from_date) <= strtotime($third_sat) && strtotime($to_date) >= strtotime($third_sat)){
					$total_days = $total_days-1;            
				}


				$first_sat = date('m/d/Y', strtotime('first sat of '.$e_month.' 2022'));          
				$third_sat = date('m/d/Y', strtotime('third sat of '.$e_month.' 2022'));          
				if(strtotime($from_date) <= strtotime($first_sat) && strtotime($to_date) >= strtotime($first_sat)){
					$total_days = $total_days-1;            
				}
				if(strtotime($from_date) <= strtotime($third_sat) && strtotime($to_date) >= strtotime($third_sat)){
					$total_days = $total_days-1;            
				}
			}
			echo json_encode($total_days); die();
		}

		public function add_leave(){
			$this->load->view('users/footer');
			$this->load->view('user_leave/add_leave');
		}	

		public function add_leave_func(){
			date_default_timezone_set('Asia/Kolkata');

			$dates = explode('-', $_POST['leave_date'], 2);
			$from_date = trim($dates[0]);
			$to_date =  trim($dates[1]);

			if($from_date == $to_date){
				$leave_d  = date('Y-m-d', strtotime($from_date));
			}else{
				$leave_d = date('Y-m-d', strtotime($from_date))." To ".date('Y-m-d', strtotime($to_date));
			}
			$half_day = $this->input->post('half_day');
			if($half_day){
				$first_half = $this->input->post('first_half');
			}else{
				$first_half = 0;
			}

			if($half_day == 1){ $half_day = 1;} else{ $half_day = 0;}
			$leave_days = $this->input->post('leave_days');
			
			if($half_day==1){ $leave_days = $leave_days/2; }
			
			$leave_data = array (
				'user_id' => $this->session->userdata('id'),
				'leave_date'=>$leave_d,
				'from_date'=>$from_date,
				'to_date'=>$to_date,
				'leave_days'=>$leave_days,
				'str_leave_date' => strtotime($from_date) . '-' . strtotime($to_date),
				'leave_reason'=>$this->input->post('leave_reason'),
				'half_day'=> $half_day,
				'leave_type' => 0,
				'first_half' => $first_half,
				'created_datetime' => date('d-m-Y h:i:sa')
			);
			$leave_details = $this->Leave->add_leave($leave_data);
				
			if($leave_details){
				$this->session->set_tempdata('add_leave', 'Leave Added', 2);
				redirect(base_url('requested-leave'));
			}else{
				$this->session->set_tempdata('failure', 'Retry!', 2);
				redirect(base_url('add-leave'));
			}
		}	

		public function requested_leave(){

			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"from_date" 	 => '',
					"to_date"   	 => '',
				);
			} else {
				$filter = array(
					"from_date" 	 => (!empty($_POST["from_date"]) && $_POST["from_date"] != 'NULL') ? $_POST["from_date"] : '',
					"to_date"   	 => (!empty($_POST["to_date"]) && $_POST["to_date"] != 'NULL') ? $_POST["to_date"] : '',
				);
			}

			$data['filter'] = $filter;
			$data['leave_details'] = $this->Leave->pending_leave($this->login_id, $filter);
			$data['total_days'] = $this->Leave->total_pending_leave_days($this->login_id, $filter);
			$this->load->view('user_leave/requested_leave', $data);
			$this->load->view('users/footer');
		}

		public function accepted_leave(){
			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					'leave_type'	 => '',
					"from_date" 	 => '',
					"to_date"   	 => '',
				);
			} else {
				$filter = array(
					"leave_type"     => (!empty($_POST["leave_type"]) && $_POST["leave_type"] != 'NULL') ? $_POST["leave_type"] : '',
					"from_date" 	 => (!empty($_POST["from_date"]) && $_POST["from_date"] != 'NULL') ? $_POST["from_date"] : '',
					"to_date"   	 => (!empty($_POST["to_date"]) && $_POST["to_date"] != 'NULL') ? $_POST["to_date"] : '',
				);
			}
			
			$data['filter'] = $filter;
			$data['leave_details'] = $this->Leave->accepted_leave($this->login_id, $filter);
			$data['total_days'] = $this->Leave->total_accepted_leave_days($this->login_id, $filter);
			$this->load->view('user_leave/accepted_leave', $data);
			$this->load->view('users/footer');
		}

		public function rejected_leave(){
			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"from_date" 	 => '',
					"to_date"   	 => '',
				);
			} else {
				$filter = array(
					"from_date" 	 => (!empty($_POST["from_date"]) && $_POST["from_date"] != 'NULL') ? $_POST["from_date"] : '',
					"to_date"   	 => (!empty($_POST["to_date"]) && $_POST["to_date"] != 'NULL') ? $_POST["to_date"] : '',
				);
			}
			
			$data['filter'] = $filter;
			$data['leave_details'] = $this->Leave->rejected_leave($this->login_id, $filter);
			$data['total_days'] = $this->Leave->total_rejected_leave_days($this->login_id, $filter);
			$data['login_id'] = $this->session->userdata('id');
			$this->load->view('user_leave/rejected_leave', $data);
			$this->load->view('users/footer');
		}

		public function delete_leave($id){
			$this->Leave->delete_leave($id);
			$this->session->set_tempdata('delete_leave', 'Deleted!', 2);
			echo "true"; die();
		}		
	}
?>
