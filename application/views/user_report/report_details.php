<style>
    .stars {
        display: inline-block;
        margin: 5px 0;
        font-size: 24px;
        direction: rtl;
    }

    .stars input[type="radio"] {
        display: none;
    }

    .stars label {
        display: inline-block;
        cursor: pointer;
        color: #ddd;
        text-align: left; /* Align the labels to the left */
        direction: ltr;
    }

    .stars label:before {
        content: "\2605";
        margin-left: 5px;
    }

    .stars input[type="radio"]:checked ~ label {
        /* color: #ee076e; */
        content: "\2605";
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
                        <h3 class="card-title text-center">Assessment Report ( <?= $question_group['month_start'] ?> - <?= $question_group['month_end'].', '. $question_group['year'] ?>) </h3>
                            <?php foreach ($questions as $question) { ?>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <h4><?= $question['question'] ?></h4>
                                        </div>
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label>Developer Ratings</label>
                                                    <input type="text" class="form-control" name="dev_comment_.<?= $question['id'] ?>" placeholder="Developer Comment" required>
                                                </div>
                                            </div>
                                            <div class="col-4 mt-4">
                                            <?php for ($i = 1; $i <= 5; $i++) {
                    if ($i <= $rating->developer_rating) {
                        echo '<i class="fas fa-star"></i>';
                    } else {
                        echo '<i class="far fa-star"></i>';
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
