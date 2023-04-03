<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
					
					<h4 class="card-title">Add Question</h4>
                                <form class="m-t-20" action="<?= base_url('add_que_func') ?>" method="POST">
                                    <div class="">
									<div class="form-group m-b-30">
									<label for="exampleFormControlSelect1">Select Group</label>
									<select class="form-control" name="users_group_id" id="exampleFormControlSelect1">
										<option selected value="">Select Group</option>
										<option value="2">Developer</option>
										<option value="4">Manager</option>
										<option value="13">Team Lead</option>
										

									</select>
								</div>
								<!-- <div class="">
									<div class="form-group m-b-30">
									<label for="exampleFormControlSelect1">Select Quarter</label>
									<select class="form-control" name="question_group_id" id="exampleFormControlSelect1">
										<option selected value="">Select Quarter Group</option>
									<?php foreach($grp as $grps){ ?>

										<option value="<?= $grps['id'] ?>"><?= $grps['month_start'].'-'.$grps['month_end'].'-'.$grps['year']?></option>
										
										<?php } ?>

									</select>
								</div> -->
							</div><br>
                                        <div class="email-repeater form-group">
                                            <div data-repeater-list="repeater-group">
                                                <div data-repeater-item class="row m-b-15">
                                                    <div class="col-md-10">
                                                        <input type="text" name="quet" class="form-control" id="email" placeholder="question">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <button data-repeater-delete="" class="btn btn-danger waves-effect waves-light" type="button"><i class="ti-close"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="button" data-repeater-create="" class="btn btn-info waves-effect waves-light">Add Question
                                            </button>
                                        </div>
                                        
                                        <div class="form-group">
                                            <button class="btn btn-success waves-effect waves-light" type="submit">Submit
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