<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Manager Report History</h2>
                                    </div>
                                </div>
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
                                                            <form action="<?= base_url('admin-manager-review-details') ?>" method="POST">
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
										<h4 class="text-noori" align="center">No Manager Report Found!</h4>
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
	<?php if($this->session->tempdata('add')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Review Submitted!',
		})
	<?php } ?>
</script>