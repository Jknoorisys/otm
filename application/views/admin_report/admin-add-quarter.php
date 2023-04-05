<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
					
					<h4 class="card-title">Add Quarter</h4>
                                <form class="m-t-20" action="<?= base_url('admin-save-quarter') ?>" method="POST">
									<div class="row">
										<div class="col-md-4">
                                        <div class="form-group">
                                            <input type="month" name="month_start" class="form-control" placeholder="Enter Start Month" required>
                                        </div>
										</div>
									
									
                                    
										<div class="col-md-4">
											<div class="form-group m-b-30">
												<input type="month" name="month_end" class="form-control" placeholder="Enter End Month" required>
											</div>
										</div>
                                    
										<div class="col-md-4">
											<div class="form-group m-b-30">
												<input type="text" id="txtWeight" maxlength="4" onkeyup="this.value = minmax(this.value, , 10000)" name="year" class="form-control" placeholder="Enter Year" required>
											</div>
										</div>
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
<script type="text/javascript">
function minmax(value, min, max) 
{
    if(parseInt(value) < min || isNaN(parseInt(value))) 
        return min; 
    else if(parseInt(value) > max) 
        return max; 
    else return value;
}
</script>
<!-- <input type="text" name="textWeight" id="txtWeight" maxlength="5" onkeyup="this.value = minmax(this.value, 0, 100)"/> -->
</html>