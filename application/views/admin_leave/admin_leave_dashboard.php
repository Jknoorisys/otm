<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Today's Leave</h2>
                                    </div>
                                </div>
                            </div>
							<div class="table-responsive">
                                <div class="col-12">
									<?php if(!empty($leave_details_today)){ ?> 
										<table class="table table-hover v-middle display wrap" data-order="[]" id="file_export">
											<thead>
												<tr class="bg-light">
													<th class="border-top-0">User Name</th>
													<th class="border-top-0">Leave Days</th>
													<th class="border-top-0">Full/Half Day</th>
													<th class="border-top-0">Leave Type</th>
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Accepted Reason</th>
													<th class="border-top-0">Accepted By</th>
												</tr>
											</thead>
                                            <tbody>
												<?php foreach($leave_details_today as $leave){?>
													<tr>
														<td><?=$leave['user_name']?></td>
														<td><?=$leave['leave_days']?></td>
														<td><?php if($leave['half_day']==1 && $leave['first_half']==1){echo 'First-Half';}elseif($leave['half_day']==1 && $leave['first_half']==2){echo 'Second-Half';}else{echo 'Full Day';}  ?></td>
														<td><?=$leave['leave_type'] == 0 ? 'Normal' : 'Flash'?></td>
														<td><?=$leave['leave_reason']?></td>
														<td><?=$leave['leave_accepted_reason']?></td>
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
													<th class="border-top-0">Leave Days</th>
													<th class="border-top-0">Full/Half Day</th>
													<th class="border-top-0">Leave Type</th>
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Accepted Reason</th>
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
			<!-- </div> -->


			<!-- tomorrow -->


			<!-- <div class="page-wrapper"> -->
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Tomorrow's  Leave</h2>
                                    </div>
                                </div>
                            </div>
							<div class="table-responsive">
                                <div class="col-12">
									<?php if(!empty($leave_details_tomorrow)){ ?> 
										<table class="table table-hover v-middle display wrap" data-order="[]" id="file_export">
											<thead>
												<tr class="bg-light">
													<th class="border-top-0">User Name</th>
													<th class="border-top-0">Leave Days</th>
													<th class="border-top-0">Full/Half Day</th>
													<th class="border-top-0">Leave Type</th>
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Accepted Reason</th>
													<th class="border-top-0">Accepted By</th>
												</tr>
											</thead>
                                            <tbody>
												<?php foreach($leave_details_tomorrow as $leave){?>
													<tr>
														<td><?=$leave['user_name']?></td>
														<td><?=$leave['leave_days']?></td>
														<td><?php if($leave['half_day']==1 && $leave['first_half']==1){echo 'First-Half';}elseif($leave['half_day']==1 && $leave['first_half']==2){echo 'Second-Half';}else{echo 'Full Day';}  ?></td>
														<td><?=$leave['leave_type'] == 0 ? 'Normal' : 'Flash'?></td>
														<td><?=$leave['leave_reason']?></td>
														<td><?=$leave['leave_accepted_reason']?></td>
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
													<th class="border-top-0">Leave Days</th>
													<th class="border-top-0">Full/Half Day</th>
													<th class="border-top-0">Leave Type</th>
													<th class="border-top-0">Leave Reason</th>
													<th class="border-top-0">Accepted Reason</th>
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