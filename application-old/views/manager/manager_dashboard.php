<br><div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-body" align="center">
					<h3 class="card-title">OT Details of Current Month</h3>
                    <div class="row m-t-40">

						<div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-noori-light bg-noori-light-hover text-center">
                                    <h1 class="font-light "><?php foreach($requested_ot_of_current_month as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="">Total OT of <?= date('F'); ?></h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-requested-ot') ?>">
                                    <h1 class="font-light "><?php foreach($pending_ot_of_current_month as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="">Pending Requests of <?= date('F'); ?></h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-accepted-ot') ?>">
                                    <h1 class="font-light "><?php foreach($accepted_ot_of_current_month as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="">OT Accepeted of <?= date('F'); ?></h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-rejected-ot') ?>">
                                    <h1 class="font-light "><?php foreach($rejected_ot_of_current_month as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)'] . ' hours';}} ?></h1>
                                    <h5 class="">OT Rejected of <?= date('F'); ?></h5>
                                </a>
                            </div>
                        </div>               
                    </div>
                    <br><br>
                    <h3 class="card-title">OT Details</h3>
                    <div class="row m-t-40">

						<div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-noori-light bg-noori-light-hover text-center">
                                    <h1 class="font-light "><?php foreach($total_requests as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="">Total OT</h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-requested-ot') ?>">
                                    <h1 class="font-light "><?php foreach($pending_requests as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="">Pending Requests</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-accepted-ot') ?>">
                                    <h1 class="font-light "><?php foreach($accepted_requests as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="">OT Accepeted</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-rejected-ot') ?>">
                                    <h1 class="font-light "><?php foreach($rejected_requests as $hour){ if($hour['SUM(ot_hours)'] == ''){echo 0 . ' hours'; }else{echo $hour['SUM(ot_hours)']. ' hours';}} ?></h1>
                                    <h5 class="">OT Rejected</h5>
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

					<h3 class="card-title">Leave Details of <?= date('F'); ?></h3>
                    <div class="row m-t-40">

						<div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-noori-light bg-noori-light-hover text-center">
                                    <h1 class="font-light "><?php foreach($requested_leave_of_current_month as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="">Total Leave of <?= date('F'); ?></h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-requested-leave') ?>">
                                    <h1 class="font-light "><?php foreach($pending_leave_of_current_month as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="">Pending Requests of <?= date('F'); ?></h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-accepted-leave') ?>">
                                    <h1 class="font-light "><?php foreach($accepted_leave_of_current_month as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="">Leave Accepeted of <?= date('F'); ?></h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-rejected-leave') ?>">
                                    <h1 class="font-light "><?php foreach($rejected_leave_of_current_month as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days'] . ' days';}} ?></h1>
                                    <h5 class="">Leave Rejected of <?= date('F'); ?></h5>
                                </a>
                            </div>
                        </div>               
                    </div>

                    <br><br>
                    
                    <h3 class="card-title">Leave Details</h3>
                    <div class="row m-t-40">

						<div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-noori-light bg-noori-light-hover text-center">
                                    <h1 class="font-light "><?php foreach($total_leave_requests as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="">Total Leave</h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-requested-leave') ?>">
                                    <h1 class="font-light "><?php foreach($pending_leave_requests as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="">Pending Requests</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-accepted-leave') ?>">
                                    <h1 class="font-light "><?php foreach($accepted_leave_requests as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="">Leave Accepeted</h5>
                                </a>
                            </div>
                        </div>
                                    
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <div class="card card-hover">
                                <a class="box bg-noori-light bg-noori-light-hover text-center" href="<?= base_url('manager-rejected-leave') ?>">
                                    <h1 class="font-light "><?php foreach($rejected_leave_requests as $day){ if($day['total_days'] == ''){echo 0 . ' days'; }else{echo $day['total_days']. ' days';}} ?></h1>
                                    <h5 class="">Leave Rejected</h5>
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