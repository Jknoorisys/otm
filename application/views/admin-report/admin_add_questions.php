
<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
                                        <h2 class="card-title" align="center">Add Questions <h3 align="center" style="margin-top: 5px;"></h3></span></h2>
                                    </div>
                                </div>                                
                            </div>
							<div class="col-12">
								<form class="mt-4" action="<?=base_url('manager-accepted-ot') ?>" method="POST">
									<div class="row">

										<div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Question 1</label>
											<div class="form-group">
                                        		<input type="text" class="form-control">
                                    		</div>
											</div>
										</div><br>

										<div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Question 2</label>
											<div class="form-group">
                                        		<input type="text" class="form-control">
                                    		</div>
											</div><br />

										</div><div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Question 3</label>
											<div class="form-group">
                                        		<input type="text" class="form-control">
                                    		</div>
											</div><br />

										</div><div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Question 4</label>
											<div class="form-group">
                                        		<input type="text" class="form-control">
                                    		</div>
											</div><br />

										</div><div class="col-3">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Question 5</label>
											<div class="form-group">
                                        		<input type="text" class="form-control">
                                    		</div>
											</div><br />

										<div class="col-2">
											<div class="form-group m-b-30" style="margin-top: 30px;">
												<button type="submit" class="btn btn-noori">Add</button>
												
											</div>
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
	 $(document).on("change", "#from", function () {
        debugger
        var date = $(this).val();
        $('#to').attr('min', date);
    });
</script>