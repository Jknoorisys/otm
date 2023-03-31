<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
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
    <link href="<?= base_url('assets/libs/raty-js/lib/jquery.raty.css') ?>" rel="stylesheet">   
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
                    
                    <a class="navbar-brand" href="<?= base_url('user-dashboard') ?>">
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
                                <img src="<?= base_url('assets/images/users/no_user.jpg') ?>" alt="user" class="rounded-circle" width="50px" height="45px">
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
                                    </div>
                                </div>
								<a class="dropdown-item" data-toggle="modal" data-target="#verticalcenter" href="<?= base_url('change-password') ?>">
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
						<h4 class="modal-title text-info" id="vcenter">Change Password</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
													
						<form class="mt-4" action="<?= base_url('change-password') ?>" method="POST">

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
							<a href="<?= base_url('user-dashboard') ?>" name="cancel" class="btn btn-secondary"><b>Cancel</b></a>
							<button type="submit" class="btn btn-noori" name="change">Change</button>
						</form>
					</div>
				</div>
			</div>
		</div>