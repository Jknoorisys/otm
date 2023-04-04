<div class="page-breadcrumb">
    <div class="row">
        <div class="col-5 align-self-center">
            <h4 class="page-title">Questions</h4>

            <div class="d-flex align-items-center">
            </div>
        </div>
        <a style="margin-left: 450px; margin-bottom: 10px;" href="admin-add-quest" type="button" class="btn waves-effect waves-light btn-warning">Add Questions</a>

        <div class="col-7 align-self-center">
            <div class="d-flex no-block justify-content-end align-items-center">

                </nav>
            </div>
        </div>
    </div>
</div>
<!-- ============================================================== -->
<!-- End Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Container fluid  -->
<!-- ============================================================== -->
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Start Page Content -->
    <!-- ============================================================== -->
    <div class="row">
        <!-- Column -->
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table product-overview" id="zero_config">
                            <thead>
                                <tr>
                                    <th>Questions</th>
                                    <th>Role</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($question as $q) { ?>

                                    <tr>
                                        <td><?= $q['question'] ?></td>
                                        <td><?= $q['name'] ?></td>
                                        <?php if($q['status'] == 'active') { ?>

                                        <td><span class="label label-success font-weight-100"><?= $q['status'] ?></span></td>
                                        <?php }else{?>
                                       
                                            <td><span class="label label-danger font-weight-100"><?= $q['status'] ?></span></td>
                                           <?php } ?>
                                        <td>
                                            <a href="<?= base_url('admin-edit_question/') . $q['id'] ?>" data-toggle="modal" data-target="#exampleModal<?= $q['id'] ?>" class="label label-success font-weight-100" data-whatever="@mdo">Edit</a><br><br>
                                            <form action="<?= base_url('') ?>" method="POST">
                                                <input name="status" type="hidden" value="<?= $q['status']?>" >
                                                <button id="status" type="submit" class="btn btn-<?= $q['status'] == 'active' ? 'success' : 'danger' ?> font-weight-100" ><?= $q['status'] == 'active' ? 'Active' : 'Inactive'?></button>
                                            </form>
                                        </td>
                                    </tr>
                                    <div class="modal fade" id="exampleModal<?= $q['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="exampleModalLabel1">Edit Question</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="<?= base_url('admin-update_question/').$q['id'] ?>" method="POST">

                                                        <div class="form-group">
                                                            <label for="message-text" class="control-label">Question</label>
                                                            <textarea class="form-control" name="question" id="message-text1"><?= set_value('question', $q['question']) ?></textarea>
                                                        </div>
                                                        <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary">Save</button>
                                                </div>
                                                    </form>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                <?php  } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Column -->
    </div>

    <script>
    $(document).on('click', '#status', function() {
        var id = $(this).data('id');
        var status = $(this).data('status');
        Swal.fire({
			title: 'Are you sure?',
			text: "You want to Change Status?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Yes, change it!'
		}).then((result) => {
			if (result.isConfirmed) {
				$.ajax({
					type: "POST",
					url: "<?= base_url('') ?>"+id,
					success: function (response) {
						<?php if($this->session->tempdata('')){ ?> 
							Swal.fire({
							icon: 'success',
							title: 'Changed!',
							})
						<?php } ?>
							location.reload();
						}
					}
				)}
			})
    	});
</script>