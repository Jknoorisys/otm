<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
					
					<h4 class="card-title">Add Question</h4>
                                <form class="m-t-20" action="<?= base_url('add_que_func') ?>" method="POST">
									<div class="row">
										<div class="col-8">
											<div class="form-group m-b-30">
												<label for="exampleFormControlSelect1">Select User Group</label>
												<select class="form-control" name="users_group_id" id="exampleFormControlSelect1" required>
													<option selected value="">Select Group</option>
													<option value="4">Manager</option>
													<option value="13">Team Lead</option>
													<option value="2">Developer</option>
												</select>
											</div>
										</div>
									</div>
									<br>
                                        <div class="email-repeater form-group">
                                            <div data-repeater-list="repeater-group">
                                                <div data-repeater-item class="row m-b-15">
                                                    <div class="col-md-8">
                                                        <input type="text" name="quet" class="form-control" id="email" placeholder="Enter Question" required>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <button data-repeater-delete="" class="btn btn-noori
														 waves-effect waves-light" type="button"><i class="ti-close"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
										
                                            <button type="button" data-repeater-create="" class="btn btn-noori"><i class="ti-plus"></i></button>
                                        </div>
                                        
                                        <div class="form-group">
                                            <button class="btn btn-noori" type="submit">Submit
                                            </button>
                                        </div>
                                    </div>
                                </form>
          			</div>
        		</div>
      		</div>
    	</div>
	</div>
</div>


<script>
	function myFunction() {
		var checkBox = document.getElementById("customCheck1");
		var radio = document.getElementById("radio");
		if (checkBox.checked == true){
			radio.style.display = "block";
		} else {
			radio.style.display = "none";
		}
	}
</script>

<script>
<?php if($this->session->tempdata('add_leave')){ ?> 
	Swal.fire({
	icon: 'success',
	title: 'Leave Request Sent Successfully!',
	})
<?php } ?>
</script>


</html>