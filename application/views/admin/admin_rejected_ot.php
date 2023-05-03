<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
                                        <h2 class="card-title" align="center">Rejected OT &nbsp; <span class="badge badge-pill badge-danger"><h3 align="center" style="margin-top: 5px;"><?php foreach($total_hours as $hour){ echo $hour['ot_hours']. " hours";} ?></h3></span></h2>
                                    </div>
                                </div>
                            </div>
							<div class="col-12">
								<form class="mt-4" action="<?=base_url('admin-rejected-ot') ?>" method="POST">
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
												<a href="<?=base_url('admin-rejected-ot') ?>" class="btn btn-secondary">Reset</a>
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
												<th class="border-top-0">Rejected By</th>
												<th class="border-top-0">Reason</th>
												<th class="border-top-0">Accept</th>
											</tr>
										</thead>
										<tbody>
										<?php foreach($ot_details as $ot){ ?>
											<tr>
												<td><?= $ot['user_name'] ?></td>
												<td><?= $ot['project_name'] ?></td>
												<td><?= $ot['ot_hours'] ?></td>
												<td><?= date('d-m-Y',strtotime($ot['ot_date'])) ?></td>
												<td><?= $ot['ot_time'] ?></td>
												<td><?= $ot['ot_location'] ?></td>
												<td><?= $ot['action_by'] ?></td>
												<td><?= $ot['rejected_description'] ?></td>
												<td>
												<?php if($this->session->userdata('email') == 'pm@noorisys.com'){ ?>
													<a data-id="<?= $ot['id']?>" class="btn btn-success text-white btn-sm"  id="accept"><b>Accept</b></a> &nbsp;
												<?php }else{ ?> 
													<h1>-</h1>
												<?php } ?>
												</td>
											</tr>
										<?php } ?>
										</tbody>
                                </table>
									<?php }else{ ?>
									<table class="table v-middle">
										<thead>
											<tr class="bg-light">
												<th class="border-top-0">User Name</th>
												<th class="border-top-0">Project Name</th>
												<th class="border-top-0">OT Hours</th>
												<th class="border-top-0">OT Date</th>
												<th class="border-top-0">OT Time</th>
												<th class="border-top-0">OT Location</th>
												<th class="border-top-0">Rejected By</th>
												<th class="border-top-0">Reason</th>
												<th class="border-top-0">Accept</th>
											</tr>
										</thead>
									</table>
									<h4 class="text-noori" align="center">No OT Request Found!</h4> <?php } ?>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>

<script>
	 $(document).on("change", "#from", function () {
        debugger
        var date = $(this).val();
        $('#to').attr('min', date);
    });
</script>

<script>
	<?php if($this->session->tempdata('accepted')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Accepted!',
		})
	<?php } ?>
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
