<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Accepted Leave&nbsp; <span class="badge badge-pill badge-danger"><h3 align="center" style="margin-top: 5px;"><?php foreach($total_days as $day){ echo $day['total_days']. " days";} ?></h3></span></h2>
                                    </div>
                                </div>
                            </div>
							<div class="col-12">
								<form class="mt-4" action="<?=base_url('manager-accepted-leave') ?>" method="POST">
									<div class="row">

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
												<a href="<?=base_url('manager-accepted-leave') ?>" class="btn btn-secondary">Reset</a>
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
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Accept Reason</th>
													<th class="border-top-0">Accepted By</th>
													<th class="border-top-0">Reject</th>
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
														<td><?=$leave['leave_reason']?></td>
														<td><?=$leave['leave_accepted_reason']?></td>
														<td><?=$leave['action_by']?></td>
														<td>
															<?php if($this->session->userdata('email') == 'hr@noorisys.com'){ ?>
																<a data-toggle="modal" data-target="#verticalcenterreject<?=$leave['id']?>" href = "<?=base_url('reject-user-leave/').$leave['id']?>"  class="btn btn-danger btn-sm">Reject</a>
															<?php }else{ ?> 
																<h1>-</h1>
															<?php } ?>
														</td>
															<div id="verticalcenterreject<?=$leave['id']?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
																<div class="modal-dialog modal-dialog-centered">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title text-noori" id="vcenter">Reject Reason</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
																		</div>
																		<div class="modal-body">
																			<form class="mt-4" action="<?=base_url('reject-user-leave/').$leave['id']?>" method="POST">
																				<div class="form-group">
																					<label class="card-title">Reason</label>
																					<textarea class="form-control"  rows="4" placeholder="Text Here..." name="rejected_reason" required></textarea>
																				</div>
																		</div>
																		<input type="hidden" name="balance_leave" value="<?=$leave['balance_leave']?>">
																		<input type="hidden" name="paid_leave" value="<?=$leave['paid_leave']?>">
																		<input type="hidden" name="unpaid_leave" value="<?=$leave['unpaid_leave']?>">
																		<div class="modal-footer">
																			<a href="<?= base_url('manager-requested-leave') ?>" class="btn btn-secondary"><b>Cancel</b></a>
																			<button type="submit" class="btn btn-noori" id="reject" ><b>Reject</b></button><br>
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
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Accept Reason</th>
													<th class="border-top-0">Accepted By</th>
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
</script>