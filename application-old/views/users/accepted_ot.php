 
        <div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
                                        <h2 class="card-title" align="center">Accepted OT&nbsp; <span class="badge badge-pill badge-danger"><h4 align="center" style="margin-top: 6px;"><?php foreach($total_hours as $hour){ echo $hour['ot_hours']. " hours";} ?></h4></span></h2>
                                    </div>
                                </div>
                                
                            </div>

							<div class="col-12">
								<form class="mt-4" action="<?=base_url('accepted-ot') ?>" method="POST">
									<div class="row">

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

										<div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">From</label>
												<input type="date" id="from" class="form-control" name="start_date" value="<?= $filter['start_date'] ?>">
											</div>
										</div>
										
										<div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">To</label>
												<input type="date" id="to" class="form-control" name="end_date" value="<?= $filter['end_date'] ?>">
											</div>
										</div>

										<div class="col-3">
											<div class="form-group m-b-30" style="margin-top: 30px;">
												<button type="submit" class="btn btn-noori">search</button>
												<a href="<?=base_url('accepted-ot') ?>" class="btn btn-secondary">Reset</a>
											</div>
										</div>

									</div>
                        		</form>
                    		</div>

                            <div class="table-responsive">
                               <div class="col-12">
								<?php if(!empty($ot_details)) { ?> 
										<table id="file_export" data-order="[]" class="table v-middle table-hover display wrap">
											<thead>
												<tr class="bg-light">
													<th class="border-top-0">Project Name</th>
													<th class="border-top-0">OT Hours</th>
													<th class="border-top-0">OT Date</th>
													<th class="border-top-0">OT Time</th>
													<th class="border-top-0">OT Location</th>
													<th class="border-top-0">Description</th>
													<th class="border-top-0">Accepted By</th>
												</tr>
											</thead>
											<tbody>
											<?php foreach($ot_details as $ot){ ?>
												<tr>
													<td><?= $ot['project_name'] ?></td>
													<td><?= $ot['ot_hours'] ?></td>
													<td><?= date('d-m-Y',strtotime($ot['ot_date'])) ?></td>
													<td><?= $ot['ot_time'] ?></td>
													<td><?= $ot['ot_location'] ?></td>
													<td><?= $ot['requested_description'] ?></td>
													<td><?= $ot['action_by'] ?></td>
												</tr>
											<?php } ?>
											</tbody>
										</table>
									<?php }else{ ?>
										<table class="table v-middle">
											<thead>
												<tr class="bg-light">
													<th class="border-top-0">Project Name</th>
													<th class="border-top-0">OT Hours</th>
													<th class="border-top-0">OT Date</th>
													<th class="border-top-0">OT Time</th>
													<th class="border-top-0">OT Location</th>
													<th class="border-top-0">Description</th>
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
	 $(document).on("change", "#from", function () {
        debugger
        var date = $(this).val();
        $('#to').attr('min', date);
    });
</script>