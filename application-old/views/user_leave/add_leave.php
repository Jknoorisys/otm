<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Add Leave Details</h4>
                        <form class="mt-4" action="<?= base_url('add-leave-func') ?>" method="POST">
							<div class="row">
								<div class="col-6">
									<div class="form-group m-b-30">
										<label class="mr-sm-2" for="">Leave Date</label>
										<div class='input-group mb-3'>
                        					<input type='text' class="form-control daterange"  name ="leave_date" id ="leave_date"/>
											<div class="input-group-append">
												<span class="input-group-text">
													<label class="ti-calendar" for="leave_date" style="margin-bottom:1px;"></label>
												</span>
											</div>
                      					</div>
								    </div>
								</div>
								<div class="col-6">
									<div class="form-group m-b-30">
										<label class="mr-sm-2" for="">Leave Days</label>
										<input type ="text" name ="leave_days"   class="form-control" id ="numberdays" readonly> 
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-6 ">		
									<div class="form-group m-b-30">
										<label class="card-title">Leave Reason</label>
										<textarea class="form-control" style="width:1120px;margin-left:auto;" rows="4" placeholder="Text Here..." name="leave_reason" required></textarea>
								    </div>
								</div>	
							</div>
							<!-- <div class="row">
								<div class="col-6">
									<div class="form-group m-b-30">
										<label class="card-title">Leave Type</label>
										<br>
										<div class="form-check form-check-inline">
											<div class="custom-control custom-radio">
												<input type="radio" checked class="custom-control-input" selected value="0" id="customControlValidation2" name="is_paid">
												<label class="custom-control-label" for="customControlValidation2">Unpaid</label>
											</div>
										</div><br>
										<div class="form-check form-check-inline">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input" value="1" id="customControlValidation3" name="is_paid">
												<label class="custom-control-label" for="customControlValidation3">Paid</label>
											</div>
										</div>
									</div>
								</div>
							</div> -->
							<div class="row">
								<div class="col-6">
								<br><div class="custom-control custom-checkbox">
                                        	<input type="checkbox" class="custom-control-input" id="customCheck1" onclick="myFunction()" value="1" name="half_day">
                                        	<label class="custom-control-label" for="customCheck1">Half-day</label>
                                    	</div><br>

										<div class="div" id="radio" style="display:none">
											<div class="form-check form-check-inline">
												<div class="custom-control custom-radio">
													<input type="radio" checked class="custom-control-input" value="1" id="customControlValidation2" name="first_half">
													<label class="custom-control-label" for="customControlValidation2">First-Half</label>
												</div>
											</div><br>
											<div class="form-check form-check-inline">
												<div class="custom-control custom-radio">
													<input type="radio" class="custom-control-input" value="2" id="customControlValidation3" name="first_half">
													<label class="custom-control-label" for="customControlValidation3">Second-Half</label>
												</div>
											</div>
										</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12 text-right">
                					<button type="submit" class="btn btn-noori" disabled="true" id="add_leave"  >Send Request</button>
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

<?php if($this->session->tempdata('no_balance')){ ?> 
	Swal.fire({
	icon: 'warning',
	title: 'Insufficient Balance Leave!',
	})
<?php } ?>

<?php if($this->session->tempdata('failure')){ ?> 
	Swal.fire({
	icon: 'error',
	title: 'Action Failed!',
	})
<?php } ?>
</script>

<script>
	$(function() {
		$('.daterange').daterangepicker({
		
			minDate: new Date(),
			
			isInvalidDate: function(date) {
			if (date.day() == 0 )
			return true;
				return false;
			}
		});
		
		$('.daterange').on('apply.daterangepicker', function(ev, picker) {
		
			$.ajax({
				url: 'get-days',
				method: 'POST',
				dataType: 'json',
				data: {
				dates: $("#leave_date").val(),
				},
				error: function() { alert("An error occoured!!!!!"); },
				success: function(response) {
					$('#numberdays').val(response);
					if(response != 0 && response > 0){
						$("#add_leave").removeAttr('disabled');
					}else{
						$('#add_leave').attr("disabled","true");
					}			
				}
			});     
		});
	});
</script>

</html>