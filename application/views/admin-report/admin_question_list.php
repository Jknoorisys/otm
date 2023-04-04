<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<style>
    input[type=checkbox]{
    height: 0;
    width: 0;
    visibility: hidden;
    }

    .noori-lable {
    cursor: pointer;
    text-indent: -9999px;
    width: 40px;
    height: 17px;
    background: rgb(145, 143, 143);
    /* display: block; */
    border-radius: 100px;
    position: relative;
    }

    .noori-lable:after {
    content: '';
    position: absolute;
    top: 2.2px;
    left: 4px;
    width: 12px;
    height: 12px;
    background: #fff;
    border-radius: 100px;
    transition: 0.2s;
    }

    input:checked + label {
        background: linear-gradient(145deg,#f81f01,#ee076e);
        color: #fff;
    }

    input:checked + label:after {
    left: calc(100% - 5px);
    transform: translateX(-100%);
    }

    .noori-lable:active:after {
    width: 100px;
    }
</style>
<style>
	td.wrappable,
	table.data_table td.wrappable {
		white-space: normal;
	} 
</style>
<div class="page-wrapper">
                <div class="row">
                    <div class="col-sm-12"><br>
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex align-items-center">
                                    <div class="container">
										<h2 class="card-title " align="center">Manage Questions</h2>
                                    </div>
                                </div>
                            </div>
							
							<div class="table-responsive">
                                <div class="col-12">
									<?php if(!empty($question)){ ?> 
										<table class="table table-hover v-middle display wrap" data-order="[]" id="file_export">
											<thead>
												<tr class="bg-light text-center">
													<th class="border-top-0">Question</th>
													<th class="border-top-0">User Role</th>
													<th class="border-top-0">Status</th>
													<th class="border-top-0">Actions</th>
												</tr>
											</thead>
											<tbody>
												<?php foreach($question as $question){?>
													<tr>
														<td class="text-center"><?=$question['question']?></td>
														<td class="text-center"><?= $question['name']?></td>
														<td class="text-center"><span class="label label-<?= $question['status'] == 'active' ? 'success' : 'danger' ?> font-weight-100"><?= $question['status'] ?></td>
														<td>
                                                            <div class="row justify-content-center">
                                                                <div class="col-2">
                                                                    <a href="<?= base_url('admin-edit_question/') . $question['id'] ?>" data-toggle="modal" data-target="#exampleModal<?= $question['id'] ?>" class="text-noori btn-lg" data-whatever="@mdo"><i class="fa-solid fa-pen-to-square"></i></a>

                                                                    <div class="modal fade" id="exampleModal<?= $question['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
                                                                        <div class="modal-dialog" role="document">
                                                                            <div class="modal-content">
                                                                                <div class="modal-header">
                                                                                    <h4 class="modal-title" id="exampleModalLabel1">Edit Question</h4>
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    <form action="<?= base_url('admin-update_question/').$question['id'] ?>" method="POST">

                                                                                        <div class="form-group">
                                                                                            <label for="message-text" class="control-label">Question</label>
                                                                                            <textarea class="form-control" name="question" id="message-text1"><?= set_value('question', $question['question']) ?></textarea>
                                                                                        </div>
                                                                                        <div class="modal-footer">
                                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                                    <button type="submit" class="btn btn-noori">Save</button>
                                                                                </div>
                                                                                    </form>
                                                                                </div>
                                                                                
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                                <div class="col-2">
                                                                    <form action="<?= base_url('admin-change-status') ?>" method="POST">
                                                                        <input type="hidden" name="id" value="<?= $question['id'] ?>">
                                                                        <input type="hidden" name="status" value="<?= $question['status'] == 'active' ? 'inactive' : 'active' ?>">
                                                                        <button type="submit" data-status="<?= $question['status'] == 'active' ? 'active' : 'inactive' ?>" data-id="<?= $question['id'] ?>" data-name="<?= $question['question'] ?>" class="btn block_confirm btn-sm"><input type="checkbox" id="switch" <?= $question['status'] == 'inactive' ? 'checked' : '' ?> /><label class="noori-lable" for="switch">Toggle</label></button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </td>
													</tr>
												<?php  } ?>
											</tbody>
										</table>
									<?php } else{ ?>
										<table class="table v-middle">
											<thead>
												<tr class="bg-light">
                                                    <th class="border-top-0">Question</th>
													<th class="border-top-0">User Role</th>
													<th class="border-top-0">Status</th>
													<th class="border-top-0">Action</th>
												</tr>
											</thead>
										</table>
										<h4 class="text-noori" align="center">No Question Found!</h4>
									<?php } ?>
								</div>
                        	</div>
						</div>
					</div>
				</div>
			</div>

<script>
    $('.block_confirm').click(function(event) {
        var form =  $(this).closest("form");
        var name = $(this).data("name");
        let status = $(this).data('status');
        let id = $(this).data('id');
        event.preventDefault();
        swal({
            title: "Are You Sure",
            text: (status == 'inactive') ? "You want to Activate this Qustion ?" : "You want to Inactivate this Qustion ?",
            icon: "warning",
            buttons: ["Cancel", "Yes"],
            dangerMode: true,
        })
        .then((willDelete) => {
        if (willDelete) {
            form.submit();
        }
        });
    });
</script>