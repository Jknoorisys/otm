<style>
    .stars {
        display: inline-block;
        margin: 5px 0;
        font-size: 16px;
        direction: rtl;
    }

    .stars input[type="radio"] {
        display: none;
    }

    .stars label {
        display: inline-block;
        cursor: pointer;
        /* color: #ddd; */
        color:#a3a3a3;
        text-align: left; 
        direction: ltr;
    }

    .stars label:before {
        /* content: "\2605"; */
        margin-left: 5px;
    }

    .stars input[type="radio"]:checked ~ label {
        /* color: #ee076e; */
        /* content: "\2605"; */
        color: transparent;
        background: linear-gradient(145deg, #f81f01, #ee076e);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .text-noori {
        /* color: #ee076e; */
        color: transparent;
        background: linear-gradient(145deg, #f81f01, #ee076e);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .text-grey {
        /* color: #ee076e; */
        color: transparent;
        background: linear-gradient(145deg, grey, #a3a3a3);
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
                        <?php if (!empty($reviews)) { ?>
                            <form action="<?= base_url('manager-add-developer-review') ?>" method="POST">
                                <?php foreach ($reviews as $review) { ?>
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row mb-2">
                                                <h6><?= $review['question'] ?></h6>
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
                                                            echo '<i class="fas fa-star mr-1 text-grey"></i>';
                                                        }
                                                    } ?>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-8">
                                                    <div class="form-group">
                                                        <label>TL Ratings</label>
                                                        <p><?= $review['tl_comment'] ?></p>
                                                    </div>
                                                </div>
                                                <div class="col-4 mt-4">
                                                    <?php for ($i = 1; $i <= 5; $i++) {
                                                        if ($i <= $review['tl_rating']) {
                                                            echo '<i class="fas fa-star mr-1 text-noori"></i>';
                                                        } else {
                                                            echo '<i class="fas fa-star mr-1 text-grey"></i>';
                                                        }
                                                    } ?>
                                                </div>
                                            </div>
                                        
                                            <div class="row">
                                                <div class="col-8">
                                                    <div class="form-group">
                                                        <label>Manager Ratings</label>
                                                        <input type="text" class="form-control" name="comment[<?= $review['question_id'] ?>]" placeholder="<?= $this->session->userdata('users_group_id') == 13 ? 'TL Comment' : 'Manager Comment' ?>" required>
                                                    </div>
                                                </div>
                                                <div class="col-4 mt-4">
                                                    <div class="stars">
                                                        <input type="radio" id="rating_<?= $review['question_id'] ?>_5" name="rating[<?= $review['question_id'] ?>]" value="5" required><label for="rating_<?= $review['question_id'] ?>_5"><i class="fas fa-star"></i></label>
                                                        <input type="radio" id="rating_<?= $review['question_id'] ?>_4" name="rating[<?= $review['question_id'] ?>]" value="4" required><label for="rating_<?= $review['question_id'] ?>_4"><i class="fas fa-star"></i></label>
                                                        <input type="radio" id="rating_<?= $review['question_id'] ?>_3" name="rating[<?= $review['question_id'] ?>]" value="3" required><label for="rating_<?= $review['question_id'] ?>_3"><i class="fas fa-star"></i></label>
                                                        <input type="radio" id="rating_<?= $review['question_id'] ?>_2" name="rating[<?= $review['question_id'] ?>]" value="2" required><label for="rating_<?= $review['question_id'] ?>_2"><i class="fas fa-star"></i></label>
                                                        <input type="radio" id="rating_<?= $review['question_id'] ?>_1" name="rating[<?= $review['question_id'] ?>]" value="1" required><label for="rating_<?= $review['question_id'] ?>_1"><i class="fas fa-star"></i></label>
                                                    </div>
                                                </div>
                                            </div>

                                            <input type="hidden" name="review_id[<?= $review['question_id'] ?>]" class="form-control" value="<?= $review['id'] ?>">
                                            <input type="hidden" name="report_id" class="form-control" value="<?= $review['report_id'] ?>">
                                            <input type="hidden" name="quarter_id" class="form-control" value="<?= $review['quarter_id'] ?>">
                                            <input type="hidden" name="question_id[]" class="form-control" value="<?= $review['question_id'] ?>">
                                        </div>
                                    </div>
                                <?php } ?>
                                <button type="submit" class="btn btn-noori" >Submit</button>
                            </form>
                        <?php } else { ?>
                            <h4 class="text-noori text-center v-middle">No Developer Review Found</h4>
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
		title: 'Failed to Submit Review!',
		})
	<?php } ?>
</script>
