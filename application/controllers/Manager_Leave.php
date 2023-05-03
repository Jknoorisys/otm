<?php
	class Manager_Leave extends CI_Controller
	{
		public function __construct()
		{
			parent::__construct();
			$this->load->model('Manager_Leave_Model','Leave');
			$this->load->model('manager_model');

			if ($this->session->userdata('isLogin') == 1  && $this->session->userdata('isManager') == 1 && $this->session->userdata('isAdmin') == 0) {
				$this->login_id = $this->session->userdata('id');
				$this->group_id = $this->session->userdata('users_group_id');
				$this->tl_id = $this->group_id == 13 ? $this->login_id : '';
				$this->manager_email = $this->session->userdata('email');

				$projects['login_id'] = $this->session->userdata('id');
				$projects['fetch'] = $this->manager_model->get_project_details();
				$projects['users'] = $this->manager_model->get_user_details($this->tl_id, $this->manager_email);
				$this->load->view('manager/manager_header', $projects);
				$this->load->view('manager/manager_menubar');
			} else {
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
			$leave_type = $this->input->post('leave_type');
			// if($leave_type == 1){ $leave_type = 1; $leave_days = $leave_days*2; } else{ $leave_type = 0; $leave_days = $leave_days;}

			if($half_day==1){ $leave_days = $leave_days/2; }else{ $leave_days;}
			if($leave_type == 1){ $leave_type = 1; $leave_days = $leave_days*2; } else{ $leave_type = 0; $leave_days = $leave_days;}

			$leave_data = array (
				'user_id' => $this->input->post('user_name'),
				'leave_date'=>$leave_d,
				'from_date'=>$from_date,
				'to_date'=>$to_date,
				'leave_days'=>$leave_days,
				'str_leave_date' => strtotime($from_date) . '-' . strtotime($to_date),
				'leave_reason'=>$this->input->post('leave_reason'),
				'half_day'=> $half_day,
				'first_half' => $first_half,
				'leave_type' => $leave_type,
				'created_datetime' => date('d-m-Y h:i:sa')
			);
			
			$leave = $this->Leave->add_leave($leave_data);
		
			if($leave){
				$this->session->set_tempdata('add_leave', 'Leave Added', 2);
				redirect(base_url('manager-requested-leave'));
			}else{
				$this->session->set_tempdata('failure', 'Retry!', 2);
				redirect(base_url('manager-add-leave'));
			}
		}

		public function requested_leave()
		{
			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"name"           => '',
					"from_date" 	 => '',
					"to_date"   	 => '',
				);
			} else {
				$filter = array(
					"name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
					"from_date" 	 => (!empty($_POST["from_date"]) && $_POST["from_date"] != 'NULL') ? $_POST["from_date"] : '',
					"to_date"   	 => (!empty($_POST["to_date"]) && $_POST["to_date"] != 'NULL') ? $_POST["to_date"] : '',
				);
			}

			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');

			$data['leave_details'] = $this->Leave->filtered_pending_leave($filter, $tl_id, $manager_email);
			$data['total_days'] = $this->Leave->total_pending_leave_filtered_days($filter, $tl_id, $manager_email);
			$data['filter'] = $filter;
			$data['login_id'] = $this->session->userdata('id');
			$this->load->view('manager_leave/manager_requested_leave', $data);
			$this->load->view('manager/manager_footer');
		}

		public function accepted_leave()
		{
			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"name"           => '',
					'leave_type'	 => '',
					"from_date" 	 => '',
					"to_date"   	 => '',
				);
			} else {
				$filter = array(
					"name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
					"leave_type"     => (!empty($_POST["leave_type"]) && $_POST["leave_type"] != 'NULL') ? $_POST["leave_type"] : '',
					"from_date" 	 => (!empty($_POST["from_date"]) && $_POST["from_date"] != 'NULL') ? $_POST["from_date"] : '',
					"to_date"   	 => (!empty($_POST["to_date"]) && $_POST["to_date"] != 'NULL') ? $_POST["to_date"] : '',
				);
			}

			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');

			$data['leave_details'] = $this->Leave->filtered_accepted_leave($filter, $tl_id, $manager_email);
			$data['total_days'] = $this->Leave->total_accepted_leave_filtered_days($filter, $tl_id, $manager_email);
			$data['filter'] = $filter;
			$data['login_id'] = $this->session->userdata('id');
			$this->load->view('manager_leave/manager_accepted_leave', $data);
			$this->load->view('manager/manager_footer');
		}

		public function rejected_leave()
		{
			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"name"           => '',
					"from_date" 	 => '',
					"to_date"   	 => '',
				);
			} else {
				$filter = array(
					"name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
					"from_date" 	 => (!empty($_POST["from_date"]) && $_POST["from_date"] != 'NULL') ? $_POST["from_date"] : '',
					"to_date"   	 => (!empty($_POST["to_date"]) && $_POST["to_date"] != 'NULL') ? $_POST["to_date"] : '',
				);
			} 

			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');
            
			$data['leave_details'] = $this->Leave->filtered_rejected_leave($filter, $tl_id, $manager_email);
			$data['total_days'] = $this->Leave->total_rejected_leave_filtered_days($filter, $tl_id, $manager_email);
			$data['filter'] = $filter;
			$data['login_id'] = $this->session->userdata('id');
			$this->load->view('manager_leave/manager_rejected_leave', $data);
			$this->load->view('manager/manager_footer');
		}

		public function accept_user_leave()
		{
			$id = $this->uri->segment(2);
			$acceptEmail = $this->Leave->getUserEmail($id);
			
			$action_by = $this->session->userdata('name');
			$data = [
				'leave_status' => '1',
				'leave_accepted_reason' => $this->input->post('accepted_reason'),
				'is_paid' => $this->input->post('is_paid'),
				'paid_days' => $this->input->post('paid_days'),
				'unpaid_days' => $acceptEmail? $acceptEmail['leave_days'] - $this->input->post('paid_days') : '',
				'action_by' => $action_by
			];

			$accept = $this->Leave->accept_user_ot($data, $id);
			$email = $acceptEmail['user_email'];

			if($acceptEmail['half_day']==1 && $acceptEmail['first_half']==1){$day= 'First-Half';}elseif($acceptEmail['half_day']==1 && $acceptEmail['first_half']==2){$day= 'Second-Half';}else{$day= 'Full Day';}
			$acceptEmail['half_day']==1 ? $date = date('d-m-Y', strtotime($acceptEmail['from_date'])).' To '.date('d-m-Y', strtotime($acceptEmail['to_date'])): $date =date('d-m-Y', strtotime($acceptEmail['from_date']));

			if ($accept) {

				$leaveDeatils = $this->Leave->getUserEmail($id);
				$user_paid_leave = $this->Leave->user_paid_leave($leaveDeatils['user_id']);
				$user_unpaid_leave = $this->Leave->user_unpaid_leave($leaveDeatils['user_id']);
			
				$paid_leave = (!empty($user_paid_leave) && $user_paid_leave['total_paid_leaves'] != NULL) ? $user_paid_leave['total_paid_leaves'] : '0';
				$unpaid_leave = (!empty($user_unpaid_leave) && $user_unpaid_leave['total_unpaid_leaves'] != NULL) ? $user_unpaid_leave['total_unpaid_leaves'] : '0';
				
				$balace_leave_data = [
					'paid_leave' => $paid_leave,
					'unpaid_leave' => $unpaid_leave,
					'updated_at' => date('Y-m-d H:i:s')
				];

				$update_balace_leave_details = $this->Leave->balance_leave_details($balace_leave_data, $leaveDeatils['user_id'], $paid_leave);

				$body = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
					<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
					<head>
					<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
					<meta http-equiv="X-UA-Compatible" content="IE=edge">
					<meta name="format-detection" content="telephone=no">
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<title></title>
					<style type="text/css" emogrify="no">#outlook a { padding:0; } .ExternalClass { width:100%; } .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; } table td { border-collapse: collapse; mso-line-height-rule: exactly; } .editable.image { font-size: 0 !important; line-height: 0 !important; } .nl2go_preheader { display: none !important; mso-hide:all !important; mso-line-height-rule: exactly; visibility: hidden !important; line-height: 0px !important; font-size: 0px !important; } body { width:100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; } img { outline:none; text-decoration:none; -ms-interpolation-mode: bicubic; } a img { border:none; } table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } th { font-weight: normal; text-align: left; } *[class="gmail-fix"] { display: none !important; } </style>
					<style type="text/css" emogrify="no"> @media (max-width: 600px) { .gmx-killpill { content: " \03D1";} } </style>
					<style type="text/css" emogrify="no">@media (max-width: 600px) { .gmx-killpill { content: " \03D1";} .r0-c { box-sizing: border-box !important; width: 100% !important } .r1-o { border-style: solid !important; width: 100% !important } .r2-i { background-color: transparent !important } .r3-c { box-sizing: border-box !important; text-align: center !important; valign: top !important; width: 320px !important } .r4-o { border-style: solid !important; margin: 0 auto 0 auto !important; width: 320px !important } .r5-i { padding-bottom: 5px !important; padding-top: 5px !important } .r6-c { box-sizing: border-box !important; display: block !important; valign: top !important; width: 100% !important } .r7-i { padding-left: 0px !important; padding-right: 0px !important } .r8-c { box-sizing: border-box !important; text-align: center !important; width: 100% !important } .r9-o { border-style: solid !important; margin: 0 auto 0 auto !important; width: 100% !important } .r10-i { padding-left: 10px !important; padding-right: 10px !important; text-align: center !important } .r11-c { box-sizing: border-box !important; text-align: center !important; valign: top !important; width: 100% !important } .r12-i { background-color: #ffffff !important; padding-bottom: 0px !important; padding-left: 15px !important; padding-right: 15px !important; padding-top: 0px !important } .r13-c { box-sizing: border-box !important; text-align: center !important; valign: top !important; width: 200px !important } .r14-o { background-size: auto !important; border-style: solid !important; margin: 0 auto 0 auto !important; width: 200px !important } .r15-i { padding-bottom: 15px !important; padding-top: 15px !important } .r16-i { background-color: #ffffff !important; padding-bottom: 20px !important; padding-left: 15px !important; padding-right: 15px !important; padding-top: 20px !important } .r17-c { box-sizing: border-box !important; text-align: left !important; valign: top !important; width: 100% !important } .r18-o { border-style: solid !important; margin: 0 auto 0 0 !important; width: 100% !important } .r19-i { padding-bottom: 15px !important; padding-top: 15px !important; text-align: left !important } .r20-i { background-color: #eff2f7 !important; padding-bottom: 20px !important; padding-left: 15px !important; padding-right: 15px !important; padding-top: 20px !important } .r21-c { box-sizing: border-box !important; text-align: right !important; width: 100% !important } .r22-o { border-style: solid !important; margin: 0 0 0 auto !important; width: 100% !important } .r23-i { padding-bottom: 15px !important; padding-left: 0px !important; padding-right: 0px !important; padding-top: 0px !important } .r24-c { box-sizing: border-box !important; text-align: center !important; valign: top !important; width: 129px !important } .r25-o { border-style: solid !important; margin: 0 auto 0 auto !important; width: 129px !important } body { -webkit-text-size-adjust: none } .nl2go-responsive-hide { display: none } .nl2go-body-table { min-width: unset !important } .mobshow { height: auto !important; overflow: visible !important; max-height: unset !important; visibility: visible !important; border: none !important } .resp-table { display: inline-table !important } .magic-resp { display: table-cell !important } } </style>
					<!--[if !mso]><!-->
					<style type="text/css" emogrify="no">@import url("https://fonts.googleapis.com/css2?family=Montserrat"); </style>
					<!--<![endif]-->
					<style type="text/css">p, h1, h2, h3, h4, ol, ul { margin: 0; } a, a:link { color: #0092ff; text-decoration: underline } .nl2go-default-textstyle { color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5 } .default-button { border-radius: 4px; color: #ffffff; font-family: arial,helvetica,sans-serif; font-size: 16px; font-weight: bold; line-height: 1.15; text-decoration: none; width: 50% } .default-heading1 { color: #1F2D3D; font-family: arial,helvetica,sans-serif; font-size: 36px } .default-heading2 { color: #1F2D3D; font-family: arial,helvetica,sans-serif; font-size: 32px } .default-heading3 { color: #1F2D3D; font-family: arial,helvetica,sans-serif; font-size: 24px } .default-heading4 { color: #1F2D3D; font-family: arial,helvetica,sans-serif; font-size: 18px } a[x-apple-data-detectors] { color: inherit !important; text-decoration: inherit !important; font-size: inherit !important; font-family: inherit !important; font-weight: inherit !important; line-height: inherit !important; } .no-show-for-you { border: none; display: none; float: none; font-size: 0; height: 0; line-height: 0; max-height: 0; mso-hide: all; overflow: hidden; table-layout: fixed; visibility: hidden; width: 0; } </style>
					<style type="text/css">a:link{color: #0092ff; text-decoration: underline}</style>
					</head>
					<body text="#3b3f44" link="#0092ff" yahoo="fix" style="">
					<table cellspacing="0" cellpadding="0" border="0" role="presentation" class="nl2go-body-table" width="100%" style="width: 100%;">
					<tr>
						<td align="" class="r0-c">
						<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r1-o" style="table-layout: fixed; width: 100%;">
							<!-- -->
							<tr>
								<td valign="top" class="r2-i" style="background-color: transparent;">
									<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
									<tr>
										<td class="r3-c" align="center">
											<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="600" class="r4-o" style="table-layout: fixed;">
												<!-- -->
												<tr class="nl2go-responsive-hide">
												<td height="5" style="font-size: 5px; line-height: 5px;"></td>
												</tr>
												<tr>
												<td class="r5-i">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
														<tr>
															<th width="100%" valign="top" class="r6-c">
															<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r1-o" style="table-layout: fixed; width: 100%;">
																<!-- -->
																<tr>
																	<td class="nl2go-responsive-hide" width="10" style="font-size: 0px; line-height: 1px;"> </td>
																	<td valign="top" class="r7-i">
																		<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
																		<tr>
																			<td class="r8-c" align="center">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r9-o" style="table-layout: fixed; width: 100%;">
																					<tr>
																					<td class="nl2go-responsive-hide" width="30" style="font-size: 0px; line-height: 1px;"> </td>
																					<td align="center" class="r10-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 16px; text-align: center;">
																						<div>
																							<p style="margin: 0;"></p>
																						</div>
																					</td>
																					<td class="nl2go-responsive-hide" width="30" style="font-size: 0px; line-height: 1px;"> </td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		</table>
																	</td>
																	<td class="nl2go-responsive-hide" width="10" style="font-size: 0px; line-height: 1px;"> </td>
																</tr>
															</table>
															</th>
														</tr>
													</table>
												</td>
												</tr>
												<tr class="nl2go-responsive-hide">
												<td height="5" style="font-size: 5px; line-height: 5px;"></td>
												</tr>
											</table>
										</td>
									</tr>
									</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td align="center" class="r3-c">
						<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="600" class="r4-o" style="table-layout: fixed; width: 600px;">
							<tr>
								<td valign="top" class="">
									<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
									<tr>
										<td class="r11-c" align="center">
											<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r9-o" style="table-layout: fixed; width: 100%;">
												<!-- -->
												<tr>
												<td class="r12-i" style="background-color: #ffffff;">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
														<tr>
															<th width="100%" valign="top" class="r6-c">
															<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r1-o" style="table-layout: fixed; width: 100%;">
																<!-- -->
																<tr>
																	<td class="nl2go-responsive-hide" width="15" style="font-size: 0px; line-height: 1px;"> </td>
																	<td valign="top" class="r7-i">
																		<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
																		<tr>
																			<td class="r13-c" align="center">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100" class="r14-o" style="table-layout: fixed; width: 100px;">
																					<tr class="nl2go-responsive-hide">
																					<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																					<tr>
																					<td class="r15-i" style="font-size: 0px; line-height: 0px;"> <img src="https://img.mailinblue.com/3701401/images/content_library/original/622f1ae008eaf6212d612cde.png" width="100" border="0" class="" style="display: block; width: 100%;"></td>
																					</tr>
																					<tr class="nl2go-responsive-hide">
																					<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		</table>
																	</td>
																	<td class="nl2go-responsive-hide" width="15" style="font-size: 0px; line-height: 1px;"> </td>
																</tr>
															</table>
															</th>
														</tr>
													</table>
												</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td class="r11-c" align="center">
											<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r9-o" style="table-layout: fixed; width: 100%;">
												<!-- -->
												<tr class="nl2go-responsive-hide">
												<td height="20" style="font-size: 20px; line-height: 20px; background-color: #ffffff;"></td>
												</tr>
												<tr>
												<td class="r16-i" style="background-color: #ffffff;">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
														<tr>
															<th width="100%" valign="top" class="r6-c">
															<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r1-o" style="table-layout: fixed; width: 100%;">
																<!-- -->
																<tr>
																	<td class="nl2go-responsive-hide" width="15" style="font-size: 0px; line-height: 1px;"> </td>
																	<td valign="top" class="r7-i">
																		<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
																		<tr>
																			<td class="r17-c" align="left">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r18-o" style="table-layout: fixed; width: 100%;">
																					<tr class="nl2go-responsive-hide">
																					<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																					<tr>
																					<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																							<p style="margin: 0;">Dear, <strong>'.$acceptEmail["user_name"].'</strong></p>
																						</div>
																					</td>
																					</tr>
																					<tr class="nl2go-responsive-hide">
																					<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="r17-c" align="left">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r18-o" style="table-layout: fixed; width: 100%;">
																					<tr class="nl2go-responsive-hide">
																					<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																					<tr>
																					<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																							<p style="margin: 0;">Your Leave of: <strong>'.$acceptEmail["leave_days"].' days ('.$day.') is accepted by  '.$acceptEmail["action_by"].'.</strong></p>
																						</div>
																					</td>
																					</tr>
																					<tr>
																					<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																							<p style="margin: 0;"> Leave Dates: <strong>'.$date.'.</strong></p>
																						</div>
																					</td>
																					</tr>
																					<tr>
																					<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																					<div>
																						<p style="margin: 0;">Accept Reason: <strong>'.$acceptEmail["leave_accepted_reason"].'.</strong></p>
																					</div>
																					</td>
																				</tr>

																					<tr class="nl2go-responsive-hide">
																					<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="r17-c" align="left">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r18-o" style="table-layout: fixed; width: 100%;">
																					<tr class="nl2go-responsive-hide">
																					<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																					<tr>
																					<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																							<p style="margin: 0;"><strong>Kind Regards;</strong></p>
																							<p style="margin: 0;"><strong>Team HR</strong></p>
																						</div>
																					</td>
																					</tr>
																					<tr class="nl2go-responsive-hide">
																					<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		</table>
																	</td>
																	<td class="nl2go-responsive-hide" width="15" style="font-size: 0px; line-height: 1px;"> </td>
																</tr>
															</table>
															</th>
														</tr>
													</table>
												</td>
												</tr>
												<tr class="nl2go-responsive-hide">
												<td height="20" style="font-size: 20px; line-height: 20px; background-color: #ffffff;"></td>
												</tr>
											</table>
										</td>
									</tr>    
									</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
					</table>
					</body>
				</html>';

				send_mail($email, "Your Leave Request Is Accepted", $body);
				$this->session->set_tempdata('accepted', 'Leave Accepted', 2);
				redirect(base_url('manager-requested-leave'));

			} else {
				$this->session->set_tempdata('failure', 'Failed', 2);
				redirect(base_url('manager-requested-leave'));
			}
		}

		public function reject_user_leave()
		{
			$id = $this->uri->segment(2);
			$action_by = $this->session->userdata('name');
			$data = [
				'leave_status' => '2',
				'leave_rejected_reason' => $this->input->post('rejected_reason'),
				'action_by' => $action_by
			];

			$reject = $this->Leave->reject_user_ot($data, $id);
			$acceptEmail = $this->Leave->getUserEmail($id);
			$email = $acceptEmail['user_email'];
			if($acceptEmail['half_day']==1 && $acceptEmail['first_half']==1){$day= 'First-Half';}elseif($acceptEmail['half_day']==1 && $acceptEmail['first_half']==2){$day= 'Second-Half';}else{$day= 'Full Day';}
			$acceptEmail['half_day']==1 ? $date = date('d-m-Y', strtotime($acceptEmail['from_date'])).' To '.date('d-m-Y', strtotime($acceptEmail['to_date'])): $date =date('d-m-Y', strtotime($acceptEmail['from_date']));

			if ($reject) {

			$body = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
					<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
					<head>
					<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
					<meta http-equiv="X-UA-Compatible" content="IE=edge">
					<meta name="format-detection" content="telephone=no">
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<title></title>
					<style type="text/css" emogrify="no">#outlook a { padding:0; } .ExternalClass { width:100%; } .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; } table td { border-collapse: collapse; mso-line-height-rule: exactly; } .editable.image { font-size: 0 !important; line-height: 0 !important; } .nl2go_preheader { display: none !important; mso-hide:all !important; mso-line-height-rule: exactly; visibility: hidden !important; line-height: 0px !important; font-size: 0px !important; } body { width:100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; } img { outline:none; text-decoration:none; -ms-interpolation-mode: bicubic; } a img { border:none; } table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } th { font-weight: normal; text-align: left; } *[class="gmail-fix"] { display: none !important; } </style>
					<style type="text/css" emogrify="no"> @media (max-width: 600px) { .gmx-killpill { content: " \03D1";} } </style>
					<style type="text/css" emogrify="no">@media (max-width: 600px) { .gmx-killpill { content: " \03D1";} .r0-c { box-sizing: border-box !important; width: 100% !important } .r1-o { border-style: solid !important; width: 100% !important } .r2-i { background-color: transparent !important } .r3-c { box-sizing: border-box !important; text-align: center !important; valign: top !important; width: 320px !important } .r4-o { border-style: solid !important; margin: 0 auto 0 auto !important; width: 320px !important } .r5-i { padding-bottom: 5px !important; padding-top: 5px !important } .r6-c { box-sizing: border-box !important; display: block !important; valign: top !important; width: 100% !important } .r7-i { padding-left: 0px !important; padding-right: 0px !important } .r8-c { box-sizing: border-box !important; text-align: center !important; width: 100% !important } .r9-o { border-style: solid !important; margin: 0 auto 0 auto !important; width: 100% !important } .r10-i { padding-left: 10px !important; padding-right: 10px !important; text-align: center !important } .r11-c { box-sizing: border-box !important; text-align: center !important; valign: top !important; width: 100% !important } .r12-i { background-color: #ffffff !important; padding-bottom: 0px !important; padding-left: 15px !important; padding-right: 15px !important; padding-top: 0px !important } .r13-c { box-sizing: border-box !important; text-align: center !important; valign: top !important; width: 200px !important } .r14-o { background-size: auto !important; border-style: solid !important; margin: 0 auto 0 auto !important; width: 200px !important } .r15-i { padding-bottom: 15px !important; padding-top: 15px !important } .r16-i { background-color: #ffffff !important; padding-bottom: 20px !important; padding-left: 15px !important; padding-right: 15px !important; padding-top: 20px !important } .r17-c { box-sizing: border-box !important; text-align: left !important; valign: top !important; width: 100% !important } .r18-o { border-style: solid !important; margin: 0 auto 0 0 !important; width: 100% !important } .r19-i { padding-bottom: 15px !important; padding-top: 15px !important; text-align: left !important } .r20-i { background-color: #eff2f7 !important; padding-bottom: 20px !important; padding-left: 15px !important; padding-right: 15px !important; padding-top: 20px !important } .r21-c { box-sizing: border-box !important; text-align: right !important; width: 100% !important } .r22-o { border-style: solid !important; margin: 0 0 0 auto !important; width: 100% !important } .r23-i { padding-bottom: 15px !important; padding-left: 0px !important; padding-right: 0px !important; padding-top: 0px !important } .r24-c { box-sizing: border-box !important; text-align: center !important; valign: top !important; width: 129px !important } .r25-o { border-style: solid !important; margin: 0 auto 0 auto !important; width: 129px !important } body { -webkit-text-size-adjust: none } .nl2go-responsive-hide { display: none } .nl2go-body-table { min-width: unset !important } .mobshow { height: auto !important; overflow: visible !important; max-height: unset !important; visibility: visible !important; border: none !important } .resp-table { display: inline-table !important } .magic-resp { display: table-cell !important } } </style>
					<!--[if !mso]><!-->
					<style type="text/css" emogrify="no">@import url("https://fonts.googleapis.com/css2?family=Montserrat"); </style>
					<!--<![endif]-->
					<style type="text/css">p, h1, h2, h3, h4, ol, ul { margin: 0; } a, a:link { color: #0092ff; text-decoration: underline } .nl2go-default-textstyle { color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5 } .default-button { border-radius: 4px; color: #ffffff; font-family: arial,helvetica,sans-serif; font-size: 16px; font-weight: bold; line-height: 1.15; text-decoration: none; width: 50% } .default-heading1 { color: #1F2D3D; font-family: arial,helvetica,sans-serif; font-size: 36px } .default-heading2 { color: #1F2D3D; font-family: arial,helvetica,sans-serif; font-size: 32px } .default-heading3 { color: #1F2D3D; font-family: arial,helvetica,sans-serif; font-size: 24px } .default-heading4 { color: #1F2D3D; font-family: arial,helvetica,sans-serif; font-size: 18px } a[x-apple-data-detectors] { color: inherit !important; text-decoration: inherit !important; font-size: inherit !important; font-family: inherit !important; font-weight: inherit !important; line-height: inherit !important; } .no-show-for-you { border: none; display: none; float: none; font-size: 0; height: 0; line-height: 0; max-height: 0; mso-hide: all; overflow: hidden; table-layout: fixed; visibility: hidden; width: 0; } </style>
					<style type="text/css">a:link{color: #0092ff; text-decoration: underline}</style>
					</head>
					<body text="#3b3f44" link="#0092ff" yahoo="fix" style="">
					<table cellspacing="0" cellpadding="0" border="0" role="presentation" class="nl2go-body-table" width="100%" style="width: 100%;">
					<tr>
						<td align="" class="r0-c">
							<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r1-o" style="table-layout: fixed; width: 100%;">
							<!-- -->
							<tr>
								<td valign="top" class="r2-i" style="background-color: transparent;">
									<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
										<tr>
										<td class="r3-c" align="center">
											<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="600" class="r4-o" style="table-layout: fixed;">
												<!-- -->
												<tr class="nl2go-responsive-hide">
													<td height="5" style="font-size: 5px; line-height: 5px;"></td>
												</tr>
												<tr>
													<td class="r5-i">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
														<tr>
															<th width="100%" valign="top" class="r6-c">
																<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r1-o" style="table-layout: fixed; width: 100%;">
																<!-- -->
																<tr>
																	<td class="nl2go-responsive-hide" width="10" style="font-size: 0px; line-height: 1px;"> </td>
																	<td valign="top" class="r7-i">
																		<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
																			<tr>
																			<td class="r8-c" align="center">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r9-o" style="table-layout: fixed; width: 100%;">
																					<tr>
																						<td class="nl2go-responsive-hide" width="30" style="font-size: 0px; line-height: 1px;"> </td>
																						<td align="center" class="r10-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 16px; text-align: center;">
																						<div>
																							<p style="margin: 0;"></p>
																						</div>
																						</td>
																						<td class="nl2go-responsive-hide" width="30" style="font-size: 0px; line-height: 1px;"> </td>
																					</tr>
																				</table>
																			</td>
																			</tr>
																		</table>
																	</td>
																	<td class="nl2go-responsive-hide" width="10" style="font-size: 0px; line-height: 1px;"> </td>
																</tr>
																</table>
															</th>
														</tr>
													</table>
													</td>
												</tr>
												<tr class="nl2go-responsive-hide">
													<td height="5" style="font-size: 5px; line-height: 5px;"></td>
												</tr>
											</table>
										</td>
										</tr>
									</table>
								</td>
							</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="center" class="r3-c">
							<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="600" class="r4-o" style="table-layout: fixed; width: 600px;">
							<tr>
								<td valign="top" class="">
									<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
										<tr>
										<td class="r11-c" align="center">
											<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r9-o" style="table-layout: fixed; width: 100%;">
												<!-- -->
												<tr>
													<td class="r12-i" style="background-color: #ffffff;">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
														<tr>
															<th width="100%" valign="top" class="r6-c">
																<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r1-o" style="table-layout: fixed; width: 100%;">
																<!-- -->
																<tr>
																	<td class="nl2go-responsive-hide" width="15" style="font-size: 0px; line-height: 1px;"> </td>
																	<td valign="top" class="r7-i">
																		<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
																			<tr>
																			<td class="r13-c" align="center">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100" class="r14-o" style="table-layout: fixed; width: 100px;">
																					<tr class="nl2go-responsive-hide">
																						<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																					<tr>
																						<td class="r15-i" style="font-size: 0px; line-height: 0px;"> <img src="https://img.mailinblue.com/3701401/images/content_library/original/622f1ae008eaf6212d612cde.png" width="100" border="0" class="" style="display: block; width: 100%;"></td>
																					</tr>
																					<tr class="nl2go-responsive-hide">
																						<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																				</table>
																			</td>
																			</tr>
																		</table>
																	</td>
																	<td class="nl2go-responsive-hide" width="15" style="font-size: 0px; line-height: 1px;"> </td>
																</tr>
																</table>
															</th>
														</tr>
													</table>
													</td>
												</tr>
											</table>
										</td>
										</tr>
										<tr>
										<td class="r11-c" align="center">
											<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r9-o" style="table-layout: fixed; width: 100%;">
												<!-- -->
												<tr class="nl2go-responsive-hide">
													<td height="20" style="font-size: 20px; line-height: 20px; background-color: #ffffff;"></td>
												</tr>
												<tr>
													<td class="r16-i" style="background-color: #ffffff;">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
														<tr>
															<th width="100%" valign="top" class="r6-c">
																<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r1-o" style="table-layout: fixed; width: 100%;">
																<!-- -->
																<tr>
																	<td class="nl2go-responsive-hide" width="15" style="font-size: 0px; line-height: 1px;"> </td>
																	<td valign="top" class="r7-i">
																		<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
																			<tr>
																			<td class="r17-c" align="left">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r18-o" style="table-layout: fixed; width: 100%;">
																					<tr class="nl2go-responsive-hide">
																						<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																					<tr>
																						<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																							<p style="margin: 0;">Dear, <strong>'.$acceptEmail["user_name"].'</strong></p>
																						</div>
																						</td>
																					</tr>
																					<tr class="nl2go-responsive-hide">
																						<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																				</table>
																			</td>
																			</tr>
																			<tr>
																			<td class="r17-c" align="left">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r18-o" style="table-layout: fixed; width: 100%;">
																					<tr class="nl2go-responsive-hide">
																						<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																					<tr>
																						<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																							<p style="margin: 0;">Your Leave of: <strong>'.$acceptEmail["leave_days"].' days ('.$day.') is rejected by  '.$acceptEmail["action_by"].'.</strong></p>
																						</div>
																						</td>
																					</tr>
																					<tr>
																					<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																							<p style="margin: 0;">Leave Dates: <strong>'.$date.'.</strong></p>
																						</div>
																					</td>
																					</tr> 


																					<tr>
																					<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																						<p style="margin: 0;">Reject Reason: <strong>'.$acceptEmail["leave_rejected_reason"].'.</strong></p>
																						</div>
																					</td>
																				</tr>


																					<tr class="nl2go-responsive-hide">
																						<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																				</table>
																			</td>
																			</tr>
																			<tr>
																			<td class="r17-c" align="left">
																				<table cellspacing="0" cellpadding="0" border="0" role="presentation" width="100%" class="r18-o" style="table-layout: fixed; width: 100%;">
																					<tr class="nl2go-responsive-hide">
																						<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																					<tr>
																						<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																						<div>
																							<p style="margin: 0;"><strong>Kind Regards;</strong></p>
																							<p style="margin: 0;"><strong>Team HR</strong></p>
																						</div>
																						</td>
																					</tr>
																					<tr class="nl2go-responsive-hide">
																						<td height="15" style="font-size: 15px; line-height: 15px;"></td>
																					</tr>
																				</table>
																			</td>
																			</tr>
																		</table>
																	</td>
																	<td class="nl2go-responsive-hide" width="15" style="font-size: 0px; line-height: 1px;"> </td>
																</tr>
																</table>
															</th>
														</tr>
													</table>
													</td>
												</tr>
												<tr class="nl2go-responsive-hide">
													<td height="20" style="font-size: 20px; line-height: 20px; background-color: #ffffff;"></td>
												</tr>
											</table>
										</td>
										</tr>    
									</table>
								</td>
							</tr>
							</table>
						</td>
					</tr>
					</table>
					</body>
				</html>';
	
				send_mail($email, "Your Leave Request Is Rejected", $body);
				$this->session->set_tempdata('rejected', 'OT Rejected', 2);
				redirect(base_url('manager-requested-leave'));
			} else {
				$this->session->set_tempdata('failure', 'Failed', 2);
				redirect(base_url('manager-requested-leave'));
			}
		}

		public function manager_delete_leave($id){
			$this->Leave->delete_leave($id);
			$this->session->set_tempdata('manager_delete', 'Deleted!', 2);
			echo "true"; die();
		}
			
		public function manager_leave_dashboard(){			
			$current_date = date('Y-m-d');
			$tomorrow_date = date( "Y-m-d", strtotime( "+1 days" ) );
			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');

			$data['leave_details_today'] = $this->Leave->today($current_date, $tl_id, $manager_email);
			$data['leave_details_tomorrow'] = $this->Leave->tomorrow($tomorrow_date, $tl_id, $manager_email);
			$this->load->view('manager_leave/manager_leave_dashboard',$data);
			$this->load->view('manager/manager_footer');
		}

	}
?>
