<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Requested OT &nbsp; <span class="badge badge-pill badge-danger"><h3 align="center" style="margin-top: 5px;"><?php foreach($total_hours as $hour){ echo $hour['ot_hours']. " hours";} ?></h3></span></h2>
                                    </div>
                                </div>
                            </div>

							<div class="col-12">
								<form class="mt-4" action="<?=base_url('admin-requested-ot') ?>" method="POST">
									<div class="row">

										<div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Search By User Name</label>
												<select class="custom-select mr-sm-2" name="by_user">
													<option selected value="">Choose...</option>
													<?php foreach($users as $user){ ?>
														<option value="<?=$user['id']?>" <?=($filter['name']==$user['id'])?"Selected":""?>  ><?= $user['name'] ?></option>
													<?php } ?>
												</select>
											</div>
										</div>

										<div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Search by Project Name</label>
												<!-- <select class="custom-select mr-sm-2" name="by_project">
													<option selected value="">Choose...</option>
													<?php //foreach($projects as $project){ ?>
														<option value="<?= $project['id'] ?>" <?=($filter['project']==$project['id'])?"Selected":""?>><?= $project['name'] ?></option>
													<?php //} ?>
												</select> -->
												<input type="text" class="form-control" name="by_project" value="<?= $filter['project'] ?>" placeholder="Enter Project Name">
											</div>
										</div>

										<div class="col-2">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">From</label>
												<input type="date" id="from" class="form-control" name="start_date" value="<?= $filter['start_date'] ?>">
											</div>
										</div>
										
										<div class="col-2">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">To</label>
												<input type="date" id="to" class="form-control" name="end_date" value="<?= $filter['end_date'] ?>">
											</div>
										</div>

										<div class="col-2">
											<div class="form-group m-b-30" style="margin-top: 30px;">
												<button type="submit" class="btn btn-noori">search</button>
												<a href="<?=base_url('admin-requested-ot') ?>" class="btn btn-secondary">Reset</a>
											</div>
										</div>

									</div>
                        		</form>
                    		</div>

                            <div class="table-responsive">
                                <div class="col-12">
									<?php if(!empty($ot_details)){ ?> 
									<table class="table v-middle table-hover display wrap" data-order="[]" id="file_export">
                                    <thead>
                                        <tr class="bg-light">
                                            <th class="border-top-0">User Name</th>
											<th class="border-top-0">Project Name</th>
                                            <th class="border-top-0">OT Hours</th>
                                            <th class="border-top-0">OT Date</th>
											<th class="border-top-0">OT Time</th>
                                            <th class="border-top-0">OT Location</th>
                                            <th class="border-top-0">Description</th>
                                            <th class="border-top-0">Requested at</th>
											<th class="border-top-0">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php foreach($ot_details as $ot){?>
										<tr>
                                            <td><?= $ot['user_name'] ?></td>
											<td><?=$ot['project_name'] ?></td>
                                            <td><?= $ot['ot_hours'] ?></td>
                                            <td><?= date('d-m-Y',strtotime($ot['ot_date'])) ?></td>
                                            <td><?= $ot['ot_time'] ?></td>
                                            <td><?= $ot['ot_location'] ?></td>
                                            <td><?= $ot['requested_description'] ?></td>
											
											<td><?=date('d-m-Y',strtotime($ot['created_datetime']))?><br><?=date('h:i:s A',strtotime($ot['created_datetime']))?></td>
											
											<td>
												<?php if($this->session->userdata('email') == 'pm@noorisys.com'){ ?>
													<div class="row">
														<a data-id="<?= $ot['id']?>" class="btn btn-success text-white btn-sm"  id="accept"><b>Accept</b></a> &nbsp;
														<a data-toggle="modal" data-target="#verticalcenter<?=$ot['id']?>" class="btn btn-danger btn-sm" href="<?= base_url('admin-reject-user-ot/'.$ot['id']) ?>" ><b>Reject</b></a>
													</div>
												<?php }else{ ?> 
														<a id="delete" data-id="<?= $ot['id']?>" class="btn btn-danger text-white btn-sm">Delete</a>
												<?php } ?>
											</td>
                                        </tr>

										<div id="verticalcenter<?=$ot['id']?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered">
												<div class="modal-content">
													<div class="modal-header">
														<h4 class="modal-title text-noori" id="vcenter">Reject Reason</h4>
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
													</div>
													<div class="modal-body">
													
														<form class="mt-4" action="<?=base_url('admin-reject-user-ot/'.$ot['id'])?>" method="POST">
															<div class="form-group">
																<label class="card-title">Reason</label>
																<textarea class="form-control"  rows="4" placeholder="Text Here..." name="reason" required></textarea>
															</div>
													</div>
													<div class="modal-footer">
														<a href="<?= base_url('admin-requested-ot') ?>" name="cancel" class="btn btn-secondary"><b>Cancel</b></a>
														<button type="submit" name="reject" class="btn btn-noori" id="reject" ><b>Reject</b></button><br>
														</form>
													</div>
												</div>
											</div>
										</div>
									<?php  } ?>
                                    </tbody>
                                </table>
								<?php } else{ ?>
									<table class="table v-middle">
										<thead>
											<tr class="bg-light">
												<th class="border-top-0">User Name</th>
												<th class="border-top-0">Project Name</th>
												<th class="border-top-0">OT Hours</th>
												<th class="border-top-0">OT Date</th>
												<th class="border-top-0">OT Time</th>
												<th class="border-top-0">OT Location</th>
												<th class="border-top-0">Description</th>
												<th class="border-top-0">Requested at</th>
												<th class="border-top-0">Actions</th>
											</tr>
										</thead>
									</table>
								<h4 class="text-noori" align="center">No OT Request Found!</h4>
								<?php } ?>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>

<script>
	<?php if($this->session->tempdata('add')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'OT Request Sent!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('rejected')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'OT Rejected!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('failure')){ ?> 
		Swal.fire({
		icon: 'error',
		title: 'Action Failed!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('password')){ ?> 
		Swal.fire({
		icon: 'error',
		title: 'Password does not match!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('admin_delete')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Deleted!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('accepted')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Accepted!',
		})
	<?php } ?>
</script>
		
<script>
    $(document).on('click', '#delete', function() {
        var id = $(this).data('id');
        Swal.fire({
			title: 'Are you sure?',
			text: "You want to Delete OT Request?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Yes, delete it!'
		}).then((result) => {
			if (result.isConfirmed) {
				$.ajax({
					type: "POST",
					url: "<?= base_url('admin-delete-ot/') ?>"+id,
					success: function (response) {
						<?php if($this->session->tempdata('admin_delete')){ ?> 
							Swal.fire({
							icon: 'success',
							title: 'Deleted!',
							})
						<?php } ?>
							location.reload();
						}
					}
				)}
			})
    	});
</script>

<script>
    $(document).on('click', '#accept', function() {
        var id = $(this).data('id');
        Swal.fire({
			title: 'Are you sure?',
			text: "You want to Accept OT Request?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Yes, Accept it!'
		}).then((result) => {
			if (result.isConfirmed) {
				$.ajax({
					type: "POST",
					url: "<?= base_url('admin-accept-user-ot/') ?>"+id,
					success: function (response) {
						<?php if($this->session->tempdata('accepted')){ ?> 
							Swal.fire({
							icon: 'success',
							title: 'Accepted!',
							})
						<?php } ?>
						location.reload();
						}
					}
				)}
			})
    	});
</script>

<script>
	 $(document).on("change", "#from", function () {
        debugger
        var date = $(this).val();
        $('#to').attr('min', date);
    });
</script>

