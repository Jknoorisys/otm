<style>
  .bg-primary {
  background-color: #000000 !important;
}

.bg-primary:hover {
  background-image: linear-gradient(to bottom, #000000, #8a8585);
}

.bg-info {
  background-color: #f8004d !important;
}

.bg-info:hover {
  background-image: linear-gradient(to bottom, #f8004d, #ff739e);
}
.bg-success {
  background-color: #ffc20f !important;
}

.bg-success:hover {
    background-image: linear-gradient(to bottom, #ffc20f, #e6cc7f);
}
.bg-danger {
  background-color: #f57721 !important;
  color: #fff;
}

.bg-danger:hover {
    background-image: linear-gradient(to bottom, #f57721, #e6cc7f);
}
</style>

<br><div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-body" align="center">
					<h3 class="card-title">OT Details of Current Month</h3>
                    <div class="row m-t-40">

						<div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-primary text-center">
                                    <h1 class="font-light text-white"><?php foreach($requested_ot_of_current_month as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="text-white">Total OT of Current Month</h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-info text-center" href="<?= base_url('manager-requested-ot') ?>">
                                    <h1 class="font-light text-white"><?php foreach($pending_ot_of_current_month as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="text-white">Pending Requests of Current Month</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-success text-center" href="<?= base_url('manager-accepted-ot') ?>">
                                    <h1 class="font-light text-white"><?php foreach($accepted_ot_of_current_month as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="text-white">OT Accepeted of Current Month</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-danger text-center" href="<?= base_url('manager-rejected-ot') ?>">
                                    <h1 class="font-light text-white"><?php foreach($rejected_ot_of_current_month as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)'] . ' hours';}} ?></h1>
                                    <h5 class="text-white">OT Rejected of Current Month</h5>
                                </a>
                            </div>
                        </div>               
                    </div>
                    <br><br>
                    <h3 class="card-title">OT Details</h3>
                    <div class="row m-t-40">

						<div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-primary text-center">
                                    <h1 class="font-light text-white"><?php foreach($total_requests as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="text-white">Total OT</h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-info text-center" href="<?= base_url('manager-requested-ot') ?>">
                                    <h1 class="font-light text-white"><?php foreach($pending_requests as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="text-white">Pending Requests</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-success text-center" href="<?= base_url('manager-accepted-ot') ?>">
                                    <h1 class="font-light text-white"><?php foreach($accepted_requests as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="text-white">OT Accepeted</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-danger text-center" href="<?= base_url('manager-rejected-ot') ?>">
                                    <h1 class="font-light text-white"><?php foreach($rejected_requests as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="text-white">OT Rejected</h5>
                                </a>
                            </div>
                        </div>                                  
                    </div>
				</div>
			</div>
		</div>
	</div>
</div>

<br><div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-body" align="center">

					<h3 class="card-title">Leave Details of Current Month</h3>
                    <div class="row m-t-40">

						<div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-primary text-center">
                                    <h1 class="font-light text-white"><?php foreach($requested_leave_of_current_month as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="text-white">Total Leave of Current Month</h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-info text-center" href="<?= base_url('manager-requested-leave') ?>">
                                    <h1 class="font-light text-white"><?php foreach($pending_leave_of_current_month as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="text-white">Pending Requests of Current Month</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-success text-center" href="<?= base_url('manager-accepted-leave') ?>">
                                    <h1 class="font-light text-white"><?php foreach($accepted_leave_of_current_month as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="text-white">Leave Accepeted of Current Month</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-danger text-center" href="<?= base_url('manager-rejected-leave') ?>">
                                    <h1 class="font-light text-white"><?php foreach($rejected_leave_of_current_month as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days'] . ' days';}} ?></h1>
                                    <h5 class="text-white">Leave Rejected of Current Month</h5>
                                </a>
                            </div>
                        </div>               
                    </div>

                    <br><br>
                    
                    <h3 class="card-title">Leave Details</h3>
                    <div class="row m-t-40">

						<div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-primary text-center">
                                    <h1 class="font-light text-white"><?php foreach($total_leave_requests as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="text-white">Total Leave</h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-info text-center" href="<?= base_url('manager-requested-leave') ?>">
                                    <h1 class="font-light text-white"><?php foreach($pending_leave_requests as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="text-white">Pending Requests</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-success text-center" href="<?= base_url('manager-accepted-leave') ?>">
                                    <h1 class="font-light text-white"><?php foreach($accepted_leave_requests as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="text-white">Leave Accepeted</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-danger text-center" href="<?= base_url('manager-rejected-leave') ?>">
                                    <h1 class="font-light text-white"><?php foreach($rejected_leave_requests as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="text-white">Leave Rejected</h5>
                                </a>
                            </div>
                        </div>                                  
                    </div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	<?php if($this->session->tempdata('password_changed')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Password Changed!',
	})
	<?php } ?>
</script>