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
<?php foreach($question as $q){?>

<tr>
<td><?= $q['question']?></td>
<td><?= $q['name']?></td>
<td> <span class="label label-success font-weight-100"><?= $q['status'] ?></span></td>
<td><form action="<?= base_url('admin-edit_question/').$q['id'] ?>" method="POST"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="ti-marker-alt"></i></button></form><a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="ti-trash"></i></a></td>
</tr>
<?php  } ?>
</tbody>
</table>
</div>
</div>
</div>
</div>
<!-- Column -->
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="exampleModalLabel1">Edit Question</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="" method="POST"> 
                                                    
                                                    <div class="form-group">
                                                        <label for="message-text" class="control-label">Question</label>
                                                        <textarea class="form-control" value="<?= set_value('question',$question['question']) ?>" id="message-text1"></textarea>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary">Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>