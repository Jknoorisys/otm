<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<html lang="en" dir="ltr">

<head>
	<!-- This page plugin CSS -->
	<link href="<?= base_url('/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css') ?>" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<?=base_url('assets/libs/daterangepicker/daterangepicker.css')?>">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url('assets/images/icon.png') ?>">
    <title>OT Management</title>
    
    <link href="<?= base_url('assets/extra-libs/c3/c3.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('dist/css/style.min.css') ?>" rel="stylesheet">
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>   
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
 
</head>

<body>
    
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    
    <div id="main-wrapper">
        
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header">
                    
                    <a class="navbar-brand" href="<?= base_url('manager-dashboard') ?>">
                        <b class="logo-icon">
                            <img src="<?= base_url('assets/images/noorisys-logo.png') ?>" alt="homepage" width="170px" class="light-logo" />
                        </b>
                    </a>
                    
                </div>
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block">
                            <a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar">
                                <i class="sl-icon-menu font-20"></i>
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav float-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <img src="<?= base_url('assets/images/users/no_user.jpg') ?>" alt="user" class="rounded-circle" style="margin-top: 10px;" width="50px" height="45px">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                <span class="with-arrow">
                                    <span class="bg-black"></span>
                                </span>
                                <div class="d-flex no-block align-items-center p-15 bg-black text-white m-b-10">
                                    <div class="">
                                        <img src="<?= base_url('assets/images/users/no_user.jpg') ?>" alt="user" class="img-circle" width="60">
                                    </div>
                                    <div class="m-l-10">
                                        <h4 class="m-b-0"><?= $this->session->userdata('name') ?></h4>
                                        <p class=" m-b-0"><?= $this->session->userdata('email') ?></p>
										<p class=" m-b-0">Balance Leave: <?= $balance_leave ? $balance_leave['balance_leave'] : '0' ?></p>
                                    </div>
                                </div>
								<a class="dropdown-item" data-toggle="modal" data-target=".bs-example-modal-lg" href="<?= base_url('manager-add-ot') ?>">
                                    <i class="ti-wallet m-r-5 m-l-5"></i> Add OT</a>

								<a class="dropdown-item" data-toggle="modal" data-target="#veticalleave" href="<?= base_url('manager-add-leave') ?>">
                                    <i class="ti-notepad m-r-5 m-l-5"></i> Add Leave</a>
                                
								<?php if ($this->session->userdata('users_group_id') == '13') { ?>
									<a class="dropdown-item" data-toggle="modal" data-target="#veticaluser" href="<?= base_url('tl-add-user') ?>">
									<i class="ti-user m-r-5 m-l-5"></i> Add Member</a>
								<?php }?>
								<a class="dropdown-item" data-toggle="modal" data-target="#verticalcenter" href="<?= base_url('manager-change-password') ?>">
                                    <i class="ti-settings m-r-5 m-l-5"></i> Change Password</a>
                                
                                <a class="dropdown-item" href="<?= base_url('logout') ?>">
                                    <i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                                
                                </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

		<div id="verticalcenter" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title text-noori" id="vcenter">Change Password</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
													
						<form class="mt-4" action="<?= base_url('manager-change-password') ?>" method="POST">

							<div class="row">
								<div class="col-12">
									<label class="mr-sm-2" for="">Select User</label>
									<select class="custom-select mr-sm-2" name="user_name">
										<option selected value="">Choose...</option>
										<?php foreach($users as $user){ ?>
											<option value="<?=$user['id']?>" <?=($user['id']== $login_id)?"Selected":""?>  ><?= $user['name'] ?></option>
										<?php } ?>
									</select>
								</div>
							</div><br>

							<div class="col-6">
								<div class="form-group m-b-30">
								<label class="card-title" style="margin-top:4px;">Old Password</lable>
									<input type="password" class="form-control" name="old_pass" style="width:430px; margin-top:4px;" placeholder="Enter Old Password" required>
								</div>
							</div>

							<div class="col-6">
								<div class="form-group m-b-30">
								<label class="card-title" style="margin-top:4px;">New Password</lable>
									<input type="password" class="form-control" name="new_pass" style="width:430px; margin-top:4px;" placeholder="Enter New Password" required>
								</div>
							</div>

							<div class="col-6">
								<div class="form-group m-b-30">
								<label class="card-title" style="margin-top:4px;">Confirm Password</lable>
									<input type="password" class="form-control" name="confirm_pass" style="width:430px; margin-top:4px;" placeholder="Confirm Password" required>
								</div>
							</div>
					</div>
					<div class="modal-footer">
							<a href="<?= base_url('manager-dashboard') ?>" name="cancel" class="btn btn-secondary"><b>Cancel</b></a>
							<button type="submit" class="btn btn-noori" name="change">Change</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- add modal -->

		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title text-noori" id="vcenter">Add OT</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
																
						<form class="mt-4" action="<?= base_url('manager-add-ot') ?>" method="POST">

						<div class="form-group m-b-30">
							<label class="mr-sm-2" for="">Project Name</label>
							<!-- <select class="custom-select mr-sm-2" name="project_name" required>
								<option selected value="">Choose...</option>
								<?php //foreach($fetch as $project){ ?>
									<option value="<?= $project['id'] ?>"><?= $project['name'] ?></option>
								<?php //} ?>
							</select> -->
							<input type="text" class="form-control" name="project_name" style="margin-top:4px;" placeholder="Enter Project Name" required>

						</div>

						<div class="row">
							<div class="col-6">
								<div class="form-group m-b-30">
									<label class="mr-sm-2" for="">OT Hours</label>
									<select class="custom-select mr-sm-2" name="ot_hours" required>
										<option selected>1.0</option>
										<option>1.5</option>
										<option>2.0</option>
										<option>2.5</option>
										<option>3.0</option>
										<option>3.5</option>
										<option>4.0</option>
										<option>4.5</option>
										<option>5.0</option>
										<option>5.5</option>
										<option>6.0</option>
										<option>6.5</option>
										<option>7.0</option>
										<option>7.5</option>
										<option>8.0</option>
									</select>
								</div>
							</div>
							<div class="col-6">
								<div class="form-group m-b-30">
									<label class="mr-sm-2" for="">Date of OT</label>
									<select class="custom-select mr-sm-2" name="ot_date" required>
										<option selected value="<?= date('Y-m-d'); ?>"><?= date('d-m-Y'); ?></option>
										<option value="<?= date('Y-m-d',strtotime("-1 days")); ?>"><?= date('d-m-Y',strtotime("-1 days")); ?></option>
										<option value="<?= date('Y-m-d',strtotime("-2 days")); ?>"><?= date('d-m-Y',strtotime("-2 days")); ?></option>
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-6">
								<div class="form-group m-b-30">
									<label class="card-title" style="margin-top:4px;">Time of OT</lable>
									<input type="text" class="form-control" name="ot_time" style="width:225px; margin-top:4px;" placeholder="Ex. 8 pm to 10 pm" required>
								</div>
							</div>

							<div class="col-6">
								<div class="form-group m-b-30">
									<label class="mr-sm-2" for="">OT Location</label>
									<select class="custom-select mr-sm-2" name="ot_location" required>
										<option selected>Office</option>
										<option>Home</option>
										<option>Client Site</option>
									</select>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="card-title">Description</label>
							<textarea class="form-control" style="width:455px;" rows="4" placeholder="Text Here..." name="description" required></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<a href="<?= base_url('manager-dashboard') ?>" name="cancel" class="btn btn-secondary"><b>Cancel</b></a>
						<button type="submit" class="btn btn-noori" name="add">Add</button>
					</form>
					</div>
				</div>
			</div>
		</div>

		<!-- leave M -->

		<div id = "veticalleave" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title text-noori" id="vcenter">Add Leave</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<form class="mt-4" action="<?= base_url('manager-add-leave') ?>" method="POST">
							<div class="row">
								<div class="col-12">
									<label class="mr-sm-2" for="">Select User</label>
									<select class="custom-select mr-sm-2" name="user_name" onchange="changeController(this)">
										<option selected value="">Choose...</option>
										<?php foreach($users as $user){ ?>
											<option value="<?=$user['id']?>" <?=($user['id']== $login_id)?"Selected":""?>  ><?= $user['name'] ?></option>
										<?php } ?>
									</select>
								</div>
							</div><br>
							<div class="row">
									<div class="col-6">
										<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Leave Date</label>
											<div class='input-group mb-3'>
												<input type='text' class="form-control daterange"  name ="leave_date"  id ="leave_date"/>
													<div class="input-group-append">
														<span class="input-group-text">
															<label class="ti-calendar" for="leave_date" style="margin-bottom:1px;"></label>
														</span>
													</div>
											</div>

										</div>
										</div>
									<div class="col-6">
										<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Leave Days</label>
											<input type ="text" name ="leave_days"   class="form-control" id ="numberdays" readonly> 
										</div>

									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<label class="card-title">Leave Type</label>
										<div class="ml-4">
											<input type="radio" id="unpaid" name="is_paid" value="unpaid" class="control-input" checked>
											<label class="" for="unpaid">Unaid</label>
										</div>
										<div class="ml-4">
											<input type="radio" id="paid" name="is_paid" value="paid" class="control-input">
											<label class="" for="paid">Paid</label>
										</div>
										<div class="form-group mt-3" id="paid_days" style="display:none;">
											<label class="card-title">Paid Days</label>&nbsp;(<label class="card-title balance-leave">Balance Leave: </label>)
											<input type="number" step="0.5" min="0" value="0" max="" class="form-control" name="paid_days" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-6 ">
										
										<div class="form-group m-b-30">
											<label class="card-title">Leave Reason</label>
											<textarea class="form-control" style="width:470px;margin-left:auto;" rows="4" placeholder="Text Here..." name="leave_reason" required></textarea>

											<br><div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="customCheck2" value="1" name="leave_type">
												<label class="custom-control-label" for="customCheck2">Flash Leave</label>
											</div>

											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="customCheck1" onclick="myFunction()" value="1" name="half_day">
												<label class="custom-control-label" for="customCheck1">Half-day</label>
											</div><br>

											<div class="div" id="radio" style="display:none">
												<div class="form-check form-check-inline">
													<div class="custom-control custom-radio">
														<input type="radio" checked class="custom-control-input" value="1" id="customControlValidation2" name="first_half">
														<label class="custom-control-label" for="customControlValidation2">First-Half</label>
													</div>
												</div><br>
												<div class="form-check form-check-inline">
													<div class="custom-control custom-radio">
														<input type="radio" class="custom-control-input" value="2" id="customControlValidation3" name="first_half">
														<label class="custom-control-label" for="customControlValidation3">Second-Half</label>
													</div>
												</div>
											</div>
										</div>
									</div>	
								</div>
							</div>
					<div class="modal-footer">
						<a href="<?= base_url('manager-dashboard') ?>" name="cancel" class="btn btn-secondary"><b>Cancel</b></a>
						<button type="submit" class="btn btn-noori" disabled="true" id="qwertyuiop" name="add">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Add User -->
		<div id="veticaluser" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title text-noori" id="vcenter">Add New User</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<form class="mt-4" action="<?= base_url('tl-add-user') ?>" method="POST">
							
							<div class="row">
								<div class="col-6 ">

									<div class="form-group m-b-30">
										<label class="card-title">User Name</label>
										<input type="text" class="form-control" style="width:470px;margin-left:auto;" rows="4" placeholder="Enter User Name" name="name" required>
									</div>
									<div class="form-group m-b-30">
									<label class="card-title">User Email</label>
										<input type="email" class="form-control" style="width:470px;margin-left:auto;" rows="4" placeholder="Enter User Email" name="email" required>

									</div>
								</div>
							</div>
					</div>
					<div class="modal-footer">
						<a href="<?= base_url('admin-dashboard') ?>" name="cancel" class="btn btn-secondary"><b>Cancel</b></a>
						<button type="submit" class="btn btn-noori" >Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script>
			<?php if($this->session->tempdata('logout')){ ?> 
				Swal.fire({
				icon: 'success',
				title: 'Logged Out!',
				})
			<?php } ?>
			<?php if($this->session->tempdata('user')){ ?> 
				Swal.fire({
				icon: 'success',
				title: 'User Added Successfully!',
				})
			<?php } ?>
			<?php if($this->session->tempdata('failuser')){ ?> 
				Swal.fire({
				icon: 'error',
				title: 'User Does Not Added!',
				})
			<?php } ?>
			<?php if ($this->session->tempdata('email')) { ?>
				Swal.fire({
					icon: 'error',
					title: 'Email must be unique',
				})
			<?php } ?>
		</script>

	<script src="<?= base_url('assets/libs/jquery/dist/jquery.min.js') ?>"></script>
	<script src="<?=base_url('assets/libs/moment/moment.js')?>"></script>
	<script src="<?=base_url('assets/libs/daterangepicker/daterangepicker.js')?>"></script>

	<script>

		$(document ).ready(function() {

			$('.daterange').daterangepicker({
				
				isInvalidDate: function(date) {
				if (date.day() == 0 )
				return true;
					return false;
				}
			});
			
			$('.daterange').on('apply.daterangepicker', function(ev, picker) {
			
				$.ajax({
					url: 'manager-get-days',
					method: 'POST',
					dataType: 'json',
					data: {
					dates: $("#leave_date").val(),
					},
					error: function() { alert("An error occoured!!!!!"); },
					success: function(response) {
						$('#numberdays').val(response);
						if(response != 0 && response > 0){
							$("#qwertyuiop").removeAttr('disabled');
						}else{
							$('#qwertyuiop').attr("disabled","true");
						}			
					}
				});     
			}); 
	});
	</script> 

	<script>
		function myFunction() {
			var checkBox = document.getElementById("customCheck1");
			var radio = document.getElementById("radio");
			if (checkBox.checked == true){
				radio.style.display = "block";
			} else {
				radio.style.display = "none";
			}
		}
	</script>

<script>
	$(document).ready(function(){
		$(".control-input").change(function(){
			if($(this).val()=="paid"){
				$("#paid_days").show();
			}else{
				$("#paid_days").hide();
			}
		});
	});
</script>	

<script>
	function changeController(selectObject) {
		var user_id = selectObject.value; 
		$.ajax({
			type: "POST",
			url: "<?= base_url('get-user-balance-leave') ?>",
			data: {user_id: user_id},
			dataType: "json",
			success: function (response) {
				var balanceLeave = response.balance_leave;

				// Set the value of 'balance_leave' in the 'label' element
				$('label.balance-leave', '#paid_days').text('Balance Leave: ' + balanceLeave);

				// Set the 'max' attribute of the 'input' element
				$('input[name="paid_days"]').attr('max', balanceLeave);

				// Show the 'paid_days' div if it was hidden
				$('#paid_days').show();
			}
		});
	}
</script>