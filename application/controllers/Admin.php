<?php 
    class Admin extends CI_Controller{

        public function __construct()
		{
			parent::__construct();
			$this->load->model('manager_model');
			$this->load->model('Manager_Leave_Model','Leave');
            $this->load->model('Admin_Model','Admin');
			

			if ($this->session->userdata('isLogin') == 1 && $this->session->userdata('isManager') == 1 && $this->session->userdata('isAdmin') == 1) {
				$this->login_id = $this->session->userdata('id');
				$this->group_id = $this->session->userdata('users_group_id');
				$this->tl_id = $this->group_id == 13 ? $this->login_id : '';
				$this->manager_email = $this->session->userdata('email');

				$projects['login_id'] = $this->session->userdata('id');
				$projects['fetch'] = $this->manager_model->get_project_details();
				$projects['users'] = $this->manager_model->get_user_details($this->tl_id, $this->manager_email);
				$projects['tls'] = $this->Admin->get_tl();
				$this->load->view('admin/admin_header', $projects);
				$this->load->view('admin/admin_menubar');
			} else {
				redirect(base_url());
			}
		}

        public function dashboard()
		{
			
			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');

			$data['total_requests'] = $this->manager_model->requested_ot($tl_id, $manager_email);
			$data['pending_requests'] = $this->manager_model->pending_ot($tl_id, $manager_email);
			$data['accepted_requests'] = $this->manager_model->accepted_ot($tl_id, $manager_email);
			$data['rejected_requests'] = $this->manager_model->rejected_ot($tl_id, $manager_email);

			$data['requested_ot_of_current_month'] = $this->manager_model->requested_ot_of_current_month($tl_id, $manager_email);
			$data['pending_ot_of_current_month'] = $this->manager_model->pending_ot_of_current_month($tl_id, $manager_email);
			$data['accepted_ot_of_current_month'] = $this->manager_model->accepted_ot_of_current_month($tl_id, $manager_email);
			$data['rejected_ot_of_current_month'] = $this->manager_model->rejected_ot_of_current_month($tl_id, $manager_email);

			$data['total_leave_requests'] = $this->Leave->total_requested_leave_days($tl_id, $manager_email);
			$data['pending_leave_requests'] = $this->Leave->total_pending_leave_days($tl_id, $manager_email);
			$data['accepted_leave_requests'] = $this->Leave->total_accepted_leave_days($tl_id, $manager_email);
			$data['rejected_leave_requests'] = $this->Leave->total_rejected_leave_days($tl_id, $manager_email);

			$data['requested_leave_of_current_month'] = $this->Leave->requested_leave_of_current_month($tl_id, $manager_email);
			$data['pending_leave_of_current_month'] = $this->Leave->pending_leave_of_current_month($tl_id, $manager_email);
			$data['accepted_leave_of_current_month'] = $this->Leave->accepted_leave_of_current_month($tl_id, $manager_email);
			$data['rejected_leave_of_current_month'] = $this->Leave->rejected_leave_of_current_month($tl_id, $manager_email);

			$this->load->view('admin/admin_dashboard', $data);
			$this->load->view('admin/admin_footer');
		}
		
		public function add_ot()
		{
			date_default_timezone_set('Asia/Kolkata');
			$ot_date = $this->input->post('ot_date');
			if ($ot_date == date('Y-m-d') || $ot_date == date('Y-m-d',strtotime("-1 days")) || $ot_date == date('Y-m-d',strtotime("-2 days"))) {
				$ot_data = array(
					'user_id' => $this->session->userdata('id'),
					'project_name' => $this->input->post('project_name'),
					'ot_hours' => $this->input->post('ot_hours'),
					'ot_date' => $this->input->post('ot_date'),
					'str_ot_date' => strtotime($this->input->post('ot_date')),
					'ot_time' => $this->input->post('ot_time'),
					'ot_location' => $this->input->post('ot_location'),
					'requested_description' => $this->input->post('description'),
					'created_datetime' => date('d-m-Y h:i:sa')
				);
			}else{
				$this->session->set_tempdata('failure', 'Retry!', 2);
				redirect('admin-requested-ot');
			}

			if ($ot_data) {
				$this->manager_model->add_ot($ot_data);
				$this->session->set_tempdata('add', 'OT Added', 2);
				redirect('admin-requested-ot');
			} else {
				$this->session->set_tempdata('failure', 'Retry!', 2);
				redirect('admin-requested-ot');
			}

			$this->load->view('admin/admin_footer');
		}

		public function requested_ot()
		{
			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"name"           => '',
					"project"        => '',
					"start_date" 	 => '',
					"end_date"   	 => '',
				);
			} else {
				$filter = array(
					"name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
					"project"        => (!empty($_POST["by_project"]) && $_POST["by_project"] != 'NULL') ? $_POST["by_project"] : '',
					"start_date" 	 => (!empty($_POST["start_date"]) && $_POST["start_date"] != 'NULL') ? $_POST["start_date"] : '',
					"end_date"   	 => (!empty($_POST["end_date"]) && $_POST["end_date"] != 'NULL') ? $_POST["end_date"] : '',
				);
			}

			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');

			$data['ot_details'] = $this->manager_model->filtered_pending_ot($filter, $tl_id,$manager_email);
			$data['total_hours'] = $this->manager_model->total_pending_ot_hours($filter, $tl_id,$manager_email);
			$data['projects'] = $this->manager_model->get_project_details();
			$data['users'] = $this->manager_model->get_user_details($tl_id, $manager_email);
			$data['filter'] = $filter;
			$data['login_id'] = $this->session->userdata('id');
			$data['tl_id'] = $tl_id;
			$this->load->view('admin/admin_requested_ot', $data);
			$this->load->view('admin/admin_footer');
		}

		public function accepted_ot()
		{
			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"name"           => '',
					"project"        => '',
					"start_date" 	 => '',
					"end_date"   	 => ''
				);
			} else {
				$filter = array(
					"name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
					"project"        => (!empty($_POST["by_project"]) && $_POST["by_project"] != 'NULL') ? $_POST["by_project"] : '',
					"start_date" 	 => (!empty($_POST["start_date"]) && $_POST["start_date"] != 'NULL') ? $_POST["start_date"] : '',
					"end_date"   	 => (!empty($_POST["end_date"]) && $_POST["end_date"] != 'NULL') ? $_POST["end_date"] : '',
				);
			}

			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');

			$data['ot_details'] = $this->manager_model->filtered_accepted_ot($filter, $tl_id, $manager_email);
			$data['total_hours'] = $this->manager_model->total_accepted_ot_hours($filter, $tl_id, $manager_email);
			$data['projects'] = $this->manager_model->get_project_details();
			$data['users'] = $this->manager_model->get_user_details($tl_id, $manager_email);
			$data['filter'] = $filter;

			$this->load->view('admin/admin_accepted_ot', $data);
			$this->load->view('admin/admin_footer');
		}

		public function rejected_ot()
		{
			if ((is_array($_POST) && empty($_POST))) {
				$filter = array(
					"name"           => '',
					"project"        => '',
					"start_date" 	 => '',
					"end_date"   	 => ''
				);
			} else {
				$filter = array(
					"name"           => (!empty($_POST["by_user"]) && $_POST["by_user"] != 'NULL') ? $_POST["by_user"] : '',
					"project"        => (!empty($_POST["by_project"]) && $_POST["by_project"] != 'NULL') ? $_POST["by_project"] : '',
					"start_date" 	 => (!empty($_POST["start_date"]) && $_POST["start_date"] != 'NULL') ? $_POST["start_date"] : '',
					"end_date"   	 => (!empty($_POST["end_date"]) && $_POST["end_date"] != 'NULL') ? $_POST["end_date"] : '',
				);
			}

			$tl_id = $this->group_id == 13 ? $this->login_id : '';
			$manager_email = $this->session->userdata('email');

			$data['ot_details'] = $this->manager_model->filtered_rejected_ot($filter, $tl_id, $manager_email);
			$data['total_hours'] = $this->manager_model->total_rejected_ot_hours($filter, $tl_id, $manager_email);
			$data['projects'] = $this->manager_model->get_project_details();
			$data['users'] = $this->manager_model->get_user_details($tl_id, $manager_email);
			$data['filter'] = $filter;
			$this->load->view('admin/admin_rejected_ot', $data);
			$this->load->view('admin/admin_footer');
		}

		public function accept_user_ot()
		{
			$id = $this->uri->segment(2);
			$action_by = $this->session->userdata('name');
			$data = [
				'ot_status' => '1',
				'action_by' => $action_by
			];
			$accept = $this->manager_model->accept_user_ot($data, $id);
			$acceptEmail = $this->manager_model->getUserEmail($id);
			$email = $acceptEmail['user_email'];


			if ($accept) {

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
																												<p style="margin: 0;">Your OT For: <strong>'.$acceptEmail["project_name"].' ('.$acceptEmail["ot_hours"].' Hours) is accepted by  '.$acceptEmail["action_by"].'.</strong></p>
																											</div>
																										</td>
																									</tr>
																									<tr>
																										<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																											<div>
																												<p style="margin: 0;"> OT Date: <strong>'.date('d-m-Y',strtotime($acceptEmail['ot_date'])).'.</strong></p>
																											</div>
																										</td>
																									</tr>
																									<tr>
																										<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																											<div>
																												<p style="margin: 0;"> OT Location: <strong>'.$acceptEmail["ot_location"].'.</strong></p>
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

			send_mail($email, "Your OT Request Is Accepted", $body);


				$this->session->set_tempdata('accepted', 'OT Accepted', 2);
				redirect(base_url('admin-requested-ot'));

			} else {
				$this->session->set_tempdata('failure', 'Failed', 2);
				redirect(base_url('admin-requested-ot'));
			}
		}

		public function reject_user_ot()
		{
			$id = $this->uri->segment(2);
			$action_by = $this->session->userdata('name');
			$data = [
				'ot_status' => '2',
				'rejected_description' => $this->input->post('reason'),
				'action_by' => $action_by
			];

			$reject = $this->manager_model->reject_user_ot($data, $id);
			$acceptEmail = $this->manager_model->getUserEmail($id);
			$email = $acceptEmail['user_email'];

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
																												<p style="margin: 0;">Your OT For: <strong>'.$acceptEmail["project_name"].' ('.$acceptEmail["ot_hours"].' Hours) is rejected by  '.$acceptEmail["action_by"].'.</strong></p>
																											</div>
																										</td>
																									</tr>
																									<tr>
																										<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																											<div>
																												<p style="margin: 0;"> OT Date: <strong>'.date('d-m-Y',strtotime($acceptEmail['ot_date'])).'.</strong></p>
																											</div>
																										</td>
																									</tr>
																									<tr>
																										<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																											<div>
																												<p style="margin: 0;"> OT Location: <strong>'.$acceptEmail["ot_location"].'.</strong></p>
																											</div>
																										</td>
																									</tr>
																									<tr>
																										<td align="left" valign="top" class="r19-i nl2go-default-textstyle" style="color: #3b3f44; font-family: arial,helvetica,sans-serif; font-size: 16px; line-height: 1.5; text-align: left;">
																											<div>
																												<p style="margin: 0;">Reject Reason: <strong>'.$acceptEmail["rejected_description"].'.</strong></p>
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
	
			send_mail($email, "Your OT Request Is Rejected", $body);
				$this->session->set_tempdata('rejected', 'OT Rejected', 2);
				redirect(base_url('admin-requested-ot'));
			} else {
				$this->session->set_tempdata('failure', 'Failed', 2);
				redirect(base_url('admin-requested-ot'));
			}
		}

		public function change_password()
		{
			$login_id = $this->input->post('user_name');

			if($login_id == $this->login_id){
				$this->form_validation->set_rules('old_pass', 'Old Password', 'callback_check_password');
			}
			
			$this->form_validation->set_rules('new_pass', 'New Password', 'required');
			$this->form_validation->set_rules('confirm_pass', 'Confirm Password', 'required|matches[new_pass]');

			if ($this->form_validation->run() == FALSE) {
				$this->session->set_tempdata('password', 'Unable to change Password!', 1);
				redirect(base_url('admin-requested-ot'));
			} else {
				$new_pass = $this->input->post('new_pass');
				$user_pass = array('pass' => md5($new_pass));
				$this->manager_model->change_password($login_id, $user_pass);
				$this->session->set_tempdata('password_changed', 'Password Changed!', 2);
				redirect(base_url('admin-dashboard'));
			}
		}

		function check_password($old_pass)
		{
			$user = $this->manager_model->get_user($this->login_id);
			if ($user['pass'] !== md5($old_pass)) {
				return false;
			}
			return true;
		}

		public function delete_ot($id)
		{
			$this->manager_model->delete_ot($id);
			$this->session->set_tempdata('admin_delete', 'Deleted!', 2);
			echo "true"; die();
		}
		public function Add_User()
		{
			$user = $this->input->post();
			// echo json_encode($user);exit;
			$this->Admin->add_user($user);
			$this->session->set_tempdata('user', 'User Added', 2);
			redirect(base_url('admin-dashboard'));
		}
    }
?>