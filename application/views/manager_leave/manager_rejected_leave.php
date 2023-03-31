<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Rejected Leave&nbsp; <span class="badge badge-pill badge-danger"><h3 align="center" style="margin-top: 5px;"><?php foreach($total_days as $day){ echo $day['total_days']. " days";} ?></h3></span></h2>
                                    </div>
                                </div>
                            </div>
							<div class="col-12">
								<form class="mt-4" action="<?=base_url('manager-rejected-leave') ?>" method="POST">
									<div class="row">

										<div class="col-4" >
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
										
										<div class="col-3" style="width: 300px;">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">From</label>
												<input type="date" class="form-control" name="from_date" value="<?= $filter['from_date'] ?>">
											</div>
										</div>
										
										<div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">To</label>
												<input type="date" class="form-control" name="to_date" value="<?= $filter['to_date'] ?>">
											</div>
										</div>

										<div class="col-2">
											<div class="form-group m-b-30" style="margin-top: 30px;">
												<button type="submit" class="btn btn-noori">search</button>&nbsp;&nbsp;&nbsp;
												<a href="<?=base_url('manager-rejected-leave') ?>" class="btn btn-secondary">Reset</a>
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
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Reject Reason</th>
													<th class="border-top-0">Rejected By</th>
												</tr>
											</thead>
											<tbody>
												<?php foreach($leave_details as $leave){?>
													<tr>
														<td><?=$leave['user_name']?></td>
														<td><?= $leave['from_date']==$leave['to_date'] ? date('d-m-Y', strtotime($leave['from_date'])) : date('d-m-Y', strtotime($leave['from_date'])).' To '. date('d-m-Y', strtotime($leave['to_date']))?></td>														<td><?=$leave['leave_days']?></td>
														<td><?php if($leave['half_day']==1 && $leave['first_half']==1){echo 'First-Half';}elseif($leave['half_day']==1 && $leave['first_half']==2){echo 'Second-Half';}else{echo 'Full Day';}  ?></td>
														<td><?=$leave['leave_type'] == 0 ? 'Normal' : 'Flash'?></td>
														<td><?=$leave['leave_reason']?></td>
														<td><?=$leave['leave_rejected_reason']?></td>
														<td><?=$leave['action_by']?></td>
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
													<th class="border-top-0">Reject Reason</th>
													<th class="border-top-0">Rejected By</th>
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
