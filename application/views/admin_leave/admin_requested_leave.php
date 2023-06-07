<style>
	td.wrappable,
	table.data_table td.wrappable {
		white-space: normal;
	} 
</style>
<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Requested Leave &nbsp; <span class="badge badge-pill badge-danger"><h3 align="center" style="margin-top: 5px;"><?php foreach($total_days as $day){ echo $day['total_days']. " days";} ?></h3></span></h2>
                                    </div>
                                </div>
                            </div>
							<div class="col-12">
								<form class="mt-4" action="<?=base_url('admin-requested-leave') ?>" method="POST">
									<div class="row">

										<div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Search By Leave Type</label>
												<select class="custom-select mr-sm-2" name="leave_type">
													<option selected value="">Choose...</option>
													<option value="unpaid" <?=($filter['leave_type']=='unpaid')?"Selected":""?>>Unpaid</option>
													<option value="paid" <?=($filter['leave_type']=='paid')?"Selected":""?>>Paid</option>
												</select>
											</div>
										</div>

										<div class="col-3" >
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
										
										<div class="col-2" style="width: 300px;">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">From</label>
												<input type="date" class="form-control" name="from_date" value="<?= $filter['from_date'] ?>">
											</div>
										</div>
										
										<div class="col-2">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">To</label>
												<input type="date" class="form-control" name="to_date" value="<?= $filter['to_date'] ?>">
											</div>
										</div>

										<div class="col-2">
											<div class="form-group m-b-30" style="margin-top: 30px;">
												<button type="submit" class="btn btn-noori">search</button>&nbsp;&nbsp;&nbsp;
												<a href="<?=base_url('admin-requested-leave') ?>" class="btn btn-secondary">Reset</a>
											</div>
										</div>

									</div>
                        		</form>
                    		</div>
							<div class="table-responsive">
                                <div class="col-12">
									<?php if(!empty($leave_details)){ ?> 
										<table class="table table-hover v-middle display wrap" data-order="[]" id="file_export">
											<thead>
												<tr class="bg-light">
													<th class="border-top-0">User Name</th>
													<th class="border-top-0">Leave Date</th>
													<th class="border-top-0">Leave Days</th>
													<th class="border-top-0">Full/Half Day</th>
													<th class="border-top-0">Leave Type</th>
													<th class="border-top-0">Paid Days</th>
													<th class="border-top-0">Requested At</th>
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Actions</th>
												</tr>
											</thead>
											<tbody>
												<?php foreach($leave_details as $leave){?>
													<tr>
														<td><?=$leave['user_name']?></td>
														<td><?= $leave['from_date']==$leave['to_date'] ? date('d-m-Y', strtotime($leave['from_date'])) : date('d-m-Y', strtotime($leave['from_date'])).' To '. date('d-m-Y', strtotime($leave['to_date']))?></td>														<td><?=$leave['leave_days']?></td>
														<td><?php if($leave['half_day']==1 && $leave['first_half']==1){echo 'First-Half';}elseif($leave['half_day']==1 && $leave['first_half']==2){echo 'Second-Half';}else{echo 'Full Day';}  ?></td>
														<td><?=$leave['leave_type'] == 0 ? 'Normal' : 'Flash'?><br><?= $leave['is_paid'] == 'unpaid' ? 'Unpaid' : 'Paid' ?></td>
														<td><?= $leave['paid_days'] != '0' ? $leave['paid_days'] : '-' ?></td>
														<td><?=date('d-m-Y',strtotime($leave['created_datetime']))?><br><?=date('h:i:s A',strtotime($leave['created_datetime']))?></td>
														<td><?=$leave['leave_reason']?></td>
														<td>
															<?php if($this->session->userdata('email') == 'hr@noorisys.com'){ ?>
																<!-- <div class="row"> -->
																	<a  data-toggle="modal" data-target="#verticalcenter<?=$leave['id']?>"   href="<?=base_url('admin-accept-user-leave/').$leave['id']?>" class="btn btn-success btn-sm" ><b>Accept</b></a>&nbsp;
																	<a data-toggle="modal" data-target="#verticalcenterreject<?=$leave['id']?>" href = "<?=base_url('admin-reject-user-leave/').$leave['id']?>"  class="btn btn-danger btn-sm">Reject</a>
																<!-- </div> -->
															<?php }else{ ?> 
																<a id="delete" data-id="<?= $leave['id']?>" class="btn btn-secondary text-white btn-sm">Delete</a>
															<?php } ?>
														</td>
															<div id="verticalcenter<?=$leave['id']?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
																<div class="modal-dialog modal-dialog-centered">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title text-noori" id="vacenter">Accept Reason</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
																		</div>
																		<div class="modal-body">
																			<form class="mt-4" action="<?=base_url('admin-accept-user-leave/').$leave['id']?>" method="POST">
																				<div class="form-group">
																					<label class="card-title">Reason</label>
																					<textarea class="form-control"  rows="4" placeholder="Text Here..." name="accepted_reason" required></textarea>
																				</div>
																		</div>
																		<div class="modal-footer">
																			<a href="<?= base_url('admin-requested-leave') ?>" name="cancel" class="btn btn-secondary"><b>Cancel</b></a>
																			<button type="submit" name="accept" class="btn btn-noori" id="accept" ><b>Accept</b></button><br>
																			</form>
																		</div>
																	</div>
																</div>
															</div>
																											
															<div id="verticalcenterreject<?=$leave['id']?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
																<div class="modal-dialog modal-dialog-centered">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title text-noori" id="vcenter">Reject Reason</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
																		</div>
																		<div class="modal-body">
																			<form class="mt-4" action="<?=base_url('admin-reject-user-leave/').$leave['id']?>" method="POST">
																				<div class="form-group">
																					<label class="card-title">Reason</label>
																					<textarea class="form-control"  rows="4" placeholder="Text Here..." name="rejected_reason" required></textarea>
																				</div>
																		</div>
																		<div class="modal-footer">
																			<a href="<?= base_url('admin-requested-leave') ?>" name="cancel" class="btn btn-secondary"><b>Cancel</b></a>
																			<button type="submit" name="reject" class="btn btn-noori" id="reject" ><b>Reject</b></button><br>
																			</form>
																		</div>
																	</div>
																</div>
															</div>
													</tr>
												<?php  } ?>
											</tbody>
										</table>
									<?php } else{ ?>
										<table class="table v-middle">
											<thead>
												<tr class="bg-light">
													<th class="border-top-0">User Name</th>
													<th class="border-top-0">Leave Date</th>
													<th class="border-top-0">Leave Days</th>
													<th class="border-top-0">Full/Half Day</th>
													<th class="border-top-0">Leave Type</th>
													<th class="border-top-0">Paid Days</th>
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Action</th>
												</tr>
											</thead>
										</table>
										<h4 class="text-noori" align="center">No Leave Request Found!</h4>
									<?php } ?>
								</div>
                        	</div>
						</div>
					</div>
				</div>
			</div>

<script>
	<?php if($this->session->tempdata('accepted')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Leave Accepted!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('rejected')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Leave Rejected!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('failure')){ ?> 
		Swal.fire({
		icon: 'error',
		title: 'Action Failed!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('add_leave')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Leave Request Sent!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('password')){ ?> 
		Swal.fire({
		icon: 'error',
		title: 'Retry!',
		})
	<?php } ?>

	<?php if($this->session->tempdata('admin_delete')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Deleted!',
		})
	<?php } ?>
</script>

<script>
    $(document).on('click', '#delete', function() {
        var id = $(this).data('id');
        var name = $(this).data('name');
        Swal.fire({
			title: 'Are you sure?',
			text: "You want to Delete Leave Request?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Yes, delete it!'
		}).then((result) => {
			if (result.isConfirmed) {
				$.ajax({
					type: "POST",
					url: "<?= base_url('admin-delete-leave/') ?>"+id,
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