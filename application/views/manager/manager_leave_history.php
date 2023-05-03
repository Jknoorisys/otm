<div class="page-wrapper">
    <div class="row">
        <div class="col-sm-12"><br>
            <div class="card">
                <div class="card-body">
                    <div class="d-md-flex align-items-center">
                        <div class="container">
                            <h2 class="card-title " align="center">Leave History</h2>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <form class="mt-4" action="<?= base_url('manager-leave-history') ?>" method="POST">
                        <div class="row">

                            <!-- <div class="col-4" >
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">Search By Month</label>
												<select class="custom-select mr-sm-2" name="by_user">
													<option selected value="">Choose...</option> -->
                            <!-- <?php foreach ($users as $user) { ?>
														<option value="<?= $user['id'] ?>" <?= ($filter['name'] == $user['id']) ? "Selected" : "" ?>  ><?= $user['name'] ?></option>
													<?php } ?> -->
                            <!-- </select>
											</div>
										</div> -->

                            <!-- <div class="col-3" style="width: 300px;">
											<div class="form-group m-b-30">
											<label class="mr-sm-2" for="">From</label>
												<input type="month" class="form-control" name="from_date" value="">
											</div>
										</div> -->
                            <!-- <div class="col-2">
                                        <div id="file_export_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="file_export"></label></div>
                                                    </div> -->
                            <div class="col-3">

                                <div class="form-group m-b-30">
                                    <label class="mr-sm-2" for="">Search by Month</label>
                                    <input type="month" class="form-control" name="leave_month" value="">
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="form-group m-b-30" style="margin-top: 30px;">
                                    <button type="submit" class="btn btn-noori">search</button>&nbsp;&nbsp;&nbsp;
                                    <a href="<?= base_url('manager-leave-history') ?>" class="btn btn-secondary">Reset</a>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
                <div class="table-responsive">
                    <div class="col-12">
                        <?php if (!empty($leave)) { ?>
                            <table class="table table-hover v-middle display wrap" data-order="[]" id="file_export">
                                <thead>
                                    <tr class="bg-light">
                                        <th class="border-top-0">User Name</th>
                                        <th class="border-top-0">Total Leave Balance</th>
                                        <th class="border-top-0">Paid Leave</th>
                                        <th class="border-top-0">Unpaid Leave</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($leave as $l) { ?>
                                        <tr>
                                            <td><?= $l['uname'] ?></td>
                                            <td><?= $l['balance_leave'] ?></td>
                                            <td><?= $l['paid_leave'] ?></td>
                                            <td><?= $l['unpaid_leave'] ?></td>

                                        </tr>
                                    <?php  } ?>
                                </tbody>
                            </table>
                        <?php } else { ?>
                            <table class="table v-middle">
                                <thead>
                                    <tr class="bg-light">
                                        <th class="border-top-0">User Name</th>
                                        <th class="border-top-0">Total Leave Balance</th>
                                        <th class="border-top-0">Paid Leave</th>
                                        <th class="border-top-0">Unpaid Leave</th>
                                    </tr>
                                </thead>
                            </table>
                            <h4 class="text-noori" align="center">No Leave Found!</h4>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    <?php if ($this->session->tempdata('rejected')) { ?>
        Swal.fire({
            icon: 'success',
            title: 'Leave Rejected!',
        })
    <?php } ?>

    <?php if ($this->session->tempdata('failure')) { ?>
        Swal.fire({
            icon: 'error',
            title: 'Action Failed!',
        })
    <?php } ?>
</script>