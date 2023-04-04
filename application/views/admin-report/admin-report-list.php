<div class="page-wrapper">
    <div class="row">
        <div class="col-sm-12"><br>
            <div class="card">
                <div class="card-body">

                    <div class="d-md-flex align-items-center">
                        <div class="container">
                            <h2 class="card-title" align="center">Reports</h2>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <form class="mt-4" action="<?= base_url('admin-search-report') ?>" method="POST">
                        <div class="row">

                            <div class="col-3">
                                <div class="form-group m-b-30">
                                    <label class="mr-sm-2" for="">Search By Name</label>
                                    <select class="custom-select mr-sm-2" name="by_user">
                                        <option selected value="">Choose...</option>
                                            <?php foreach($username as $name) { ?>
                                        <option value="<?=$name['id']?>"><?=$name['name']?></option>
                                            <?php }?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-3">
                                <div class="form-group m-b-30">
                                    <label class="mr-sm-2" for="">Search By Month Start</label>
                                    <input id="myMonthInput" type="month" class="form-control" name="by_month_start" value="<?php echo set_value('myMonthInput'); ?>">
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group m-b-30">
                                    <label class="mr-sm-2" for="">Search By Month End</label>
                                    <input id="myMonthInput" type="month" class="form-control" name="by_month_end" value="<?php echo set_value('myMonthInput'); ?>">
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="form-group m-b-30" style="margin-top: 30px;">
                                    <button type="submit" class="btn btn-noori">search</button>
                                    <a href="<?= base_url('admin-search-report') ?>" class="btn btn-secondary">Reset</a>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
                <div class="table-responsive">
                    <div class="col-12">
                        <?php if (!empty($report)) { ?>
                            <table id="file_export" data-order="[]" class="table v-middle table-hover display wrap">
                                <thead>
                                    <tr class="bg-light">
                                        <th class="border-top-0">User</th>
                                        <th class="border-top-0">Month Start</th>
                                        <th class="border-top-0">Month End</th>
                                        <th class="border-top-0">Year</th>
                                        <th class="border-top-0">Score</th>
                                        <th class="border-top-0">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($report as $r) { ?>
                                        <tr>
                                            <td><?= $r['uname'] ?></td>
                                            <td><?= $r['smonth'] ?></td>
                                            <td><?= $r['emonth'] ?></td>
                                            <td><?= $r['qyear'] ?></td>
                                            <td><?= $r['score'] ?></td>
                                            <td>
                                                <form action="<?= base_url('admin-review-details') ?>" method="POST">
                                                    <input type="hidden" name="report_id" value="<?= $r['id'] ?>">
                                                    <button type="submit" class="text-noori btn-lg" style="border:none; background:transparent;"><i class="mdi mdi-eye"></i></button>
                                                </form>
                                            </td>

                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        <?php } else { ?>
                            <table class="table v-middle">
                                <thead>
                                    <tr class="bg-light">
                                        <th class="border-top-0">Month Start</th>
                                        <th class="border-top-0">Month End</th>
                                        <th class="border-top-0">Year</th>
                                        <th class="border-top-0">Score</th>
                                        <th class="border-top-0">Action</th>

                                    </tr>
                                </thead>
                            </table>
                            <h4 class="text-noori" align="center">No Reports Found!</h4>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<script>
    $(document).on("change", "#from", function() {
        debugger
        var date = $(this).val();
        $('#to').attr('min', date);
    });
</script>

