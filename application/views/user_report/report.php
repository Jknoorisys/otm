<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Add Review</h4>
                        <form class="mt-4" action="<?= base_url('add-review') ?>" method="POST">

							<div class="form-group m-b-30">
								<label class="mr-sm-2" for="">Project Name</label>
								<!-- <select class="custom-select mr-sm-2" name="project_name" required>
									<option selected value="">Choose...</option>
									<?php //foreach($fetch as $project){ ?>
										<option value="<?= $project['id'] ?>"><?= $project['name'] ?></option>
									<?php //} ?>
								</select> -->
								<input type="text" class="form-control" name="project_name" style="margin-top:4px;" placeholder="Enter Project Name" required>
							</div>

                            <div class="row">
								<div class="col-6">
									<div class="form-group m-b-30">
										<label class="mr-sm-2" for="">OT Hours</label>
										<select class="custom-select mr-sm-2" name="ot_hours" required>
												<option selected>1.0</option>
												<option>1.5</option>
												<option>2.0</option>
												<option>2.5</option>
												<option>3.0</option>
												<option>3.5</option>
												<option>4.0</option>
												<option>4.5</option>
												<option>5.0</option>
												<option>5.5</option>
												<option>6.0</option>
												<option>6.5</option>
												<option>7.0</option>
												<option>7.5</option>
												<option>8.0</option>
										</select>
									</div>
								</div>
								<div class="col-6">
									<div class="form-group m-b-30">
										<label class="mr-sm-2" for="">Date of OT</label>
										<select class="custom-select mr-sm-2" name="ot_date" required>
												<option selected value="<?= date('Y-m-d'); ?>"><?= date('d-m-Y'); ?></option>
												<option value="<?= date('Y-m-d',strtotime("-1 days")); ?>"><?= date('d-m-Y',strtotime("-1 days")); ?></option>
												<option value="<?= date('Y-m-d',strtotime("-2 days")); ?>"><?= date('d-m-Y',strtotime("-2 days")); ?></option>
										</select>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-6">
									<div class="form-group m-b-30">
										<label class="card-title" style="margin-top:4px;">Time of OT</lable>
										<input type="text" class="form-control" name="ot_time" style="width:550px; margin-top:4px;" placeholder="Ex. 8 pm to 10 pm" required>
									</div>
								</div>

								<div class="col-6">
									<div class="form-group m-b-30">
										<label class="mr-sm-2" for="">OT Location</label>
										<select class="custom-select mr-sm-2" name="ot_location" required>
											<option selected>Office</option>
											<option>Home</option>
											<option>Client Site</option>
										</select>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="card-title">Description</label>
								<textarea class="form-control" style="width:1120px;" rows="4" placeholder="Text Here..." name="description" required></textarea>
							</div>

                            <button type="submit" class="btn btn-noori" id="add_review">Submit</button>
                        </form>
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
		title: 'Review Submitted!',
		})
	<?php } ?>
	<?php if($this->session->tempdata('failure')){ ?> 
		Swal.fire({
		icon: 'error',
		title: 'Unable to Submit Review, Please Try Again!',
		})
	<?php } ?>
</script>