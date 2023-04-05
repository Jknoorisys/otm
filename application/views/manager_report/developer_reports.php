<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Developer Report History</h2>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
								<form class="mt-4" action="<?=base_url('manager-developer-report') ?>" method="POST">
									<div class="row">

										<div class="col-6" >
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

										<div class="col-2">
											<div class="form-group m-b-30" style="margin-top: 30px;">
												<button type="submit" class="btn btn-noori">search</button>&nbsp;&nbsp;&nbsp;
												<a href="<?=base_url('manager-developer-report') ?>" class="btn btn-secondary">Reset</a>
											</div>
										</div>

									</div>
                        		</form>
                    		</div>
							<div class="table-responsive">
                                <div class="col-12">
									<?php if(!empty($reports)){ ?> 
										<table class="table table-hover v-middle display wrap" data-order="[]" id="file_export">
											<thead>
												<tr class="bg-light">
                                                    <th class="border-top-0">Name</th>
													<th class="border-top-0">Month Start</th>
													<th class="border-top-0">Month End</th>
													<th class="border-top-0">Year</th>
													<th class="border-top-0">Score</th>
													<th class="border-top-0">Action</th>
												</tr>
											</thead>
											<tbody>
												<?php foreach($reports as $report){?>
													<tr>
                                                        <td><?= $report['user_name'] ?></td>
														<td><?= $report['month_start'] ?></td>
                                                        <td><?= $report['month_end'] ?></td>
                                                        <td><?= $report['year'] ?></td>
                                                        <td><label class="label label-<?= $report['status'] == 'completed' ? 'success' : 'warning' ?>"><?= $report['score'] == 0 ? $report['status'] : $report['score'] ?></label></td>
														<td>
                                                            <form action="<?= base_url('manager-developer-review-details') ?>" method="POST">
                                                                <input type="hidden" name="report_id" value="<?= $report['id'] ?>">
																<input type="hidden" name="report_status" value="<?= $report['status'] ?>">
																<input type="hidden" name="user_id" value="<?= $report['user_id'] ?>">

                                                                <button type="submit" class="text-noori btn-lg" style="border:none; background:transparent;"><i class="mdi mdi-eye"></i></button>
                                                            </form>
                                                        </td>
													</tr>
												<?php  } ?>
											</tbody>
										</table>
									<?php } else{ ?>
										<table class="table v-middle">
											<thead>
												<tr class="bg-light">
                                                    <th class="border-top-0">Month Start</th>
													<th class="border-top-0">Month End</th>
													<th class="border-top-0">Year</th>
													<th class="border-top-0">Score</th>
												</tr>
											</thead>
										</table>
										<h4 class="text-noori" align="center">No Developer Report Found!</h4>
									<?php } ?>
								</div>
                        	</div>
						</div>
					</div>
				</div>
			</div>


<script>
	<?php if($this->session->tempdata('failure')){ ?> 
		Swal.fire({
		icon: 'error',
		title: 'Failed to Submit Review!',
		})
	<?php } ?>
</script>
<script>
	<?php if($this->session->tempdata('add')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Review SSubmited!',
		})
	<?php } ?>
</script>