<style>
    .text-noori {
        /* color: #ee076e; */
        color: transparent;
        background: linear-gradient(145deg, #f81f01, #ee076e);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }
</style>

<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                            <?php foreach ($reviews as $review) { ?>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <h4><?= $review['question'] ?></h4>
                                        </div>
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label>Developer Ratings</label>
                                                    <p><?= $review['dev_comment'] ?></p>
                                                </div>
                                            </div>
                                            <div class="col-4 mt-4">
                                                <?php for ($i = 1; $i <= 5; $i++) {
                                                    if ($i <= $review['dev_rating']) {
                                                        echo '<i class="fas fa-star mr-1 text-noori"></i>';
                                                    } else {
                                                        echo '<i class="far fa-star mr-1"></i>';
                                                    }
                                                } ?>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label>TL Ratings</label>
                                                    <p><?= $review['TL_comment'] ?  $review['TL_comment'] : '' ?></p>
                                                </div>
                                            </div>
                                            <div class="col-4 mt-4">
                                                <?php for ($i = 1; $i <= 5; $i++) {
                                                    if ($i <= $review['TL_rating']) {
                                                        echo '<i class="fas fa-star mr-1 text-noori"></i>';
                                                    } else {
                                                        echo '<i class="far fa-star mr-1"></i>';
                                                    }
                                                } ?>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label>Manager/CTO Ratings</label>
                                                    <p><?= $review['manager_comment'] ? $review['manager_comment'] : '' ?></p>
                                                </div>
                                            </div>
                                            <div class="col-4 mt-4">
                                                <?php for ($i = 1; $i <= 5; $i++) {
                                                    if ($i <= $review['manager_rating']) {
                                                        echo '<i class="fas fa-star mr-1 text-noori"></i>';
                                                    } else {
                                                        echo '<i class="far fa-star mr-1"></i>';
                                                    }
                                                } ?>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            <?php } ?>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>

<script>
	<?php if($this->session->tempdata('add')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Review Submitted!',
		})
	<?php } ?>
	<?php if($this->session->tempdata('failure')){ ?> 
		Swal.fire({
		icon: 'error',
		title: 'Unable to Submit Review, Please Try Again!',
		})
	<?php } ?>
</script>
