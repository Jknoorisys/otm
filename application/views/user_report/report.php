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
        /* color: #ddd; */
        color:grey;
        text-align: left; 
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
                        <?php if (!empty($questions)) { ?>
                            <h3 class="card-title text-center">Assessment Report ( <?= $question_group['month_start'] ?> - <?= $question_group['month_end'].', '. $question_group['year'] ?>) </h3>
                            <form id="add-review" class="mt-4" action="<?= base_url('add-review') ?>" method="POST">
                                
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
                                                        <input type="text" class="form-control" name="developer_comment[<?= $question['id'] ?>]" placeholder="Developer Comment" required>
                                                    </div>
                                                </div>
                                                <div class="col-4 mt-4">
                                                    <div class="stars">
                                                        <input type="radio" id="developer_rating_<?= $question['id'] ?>_5" name="developer_rating[<?= $question['id'] ?>]" value="5" required><label for="developer_rating_<?= $question['id'] ?>_5"></label>
                                                        <input type="radio" id="developer_rating_<?= $question['id'] ?>_4" name="developer_rating[<?= $question['id'] ?>]" value="4" required><label for="developer_rating_<?= $question['id'] ?>_4"></label>
                                                        <input type="radio" id="developer_rating_<?= $question['id'] ?>_3" name="developer_rating[<?= $question['id'] ?>]" value="3" required><label for="developer_rating_<?= $question['id'] ?>_3"></label>
                                                        <input type="radio" id="developer_rating_<?= $question['id'] ?>_2" name="developer_rating[<?= $question['id'] ?>]" value="2" required><label for="developer_rating_<?= $question['id'] ?>_2"></label>
                                                        <input type="radio" id="developer_rating_<?= $question['id'] ?>_1" name="developer_rating[<?= $question['id'] ?>]" value="1" required><label for="developer_rating_<?= $question['id'] ?>_1"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <input type="hidden" name="question_group" class="form-control" value="<?= $question_group['id'] ?>">
                                            <input type="hidden" name="question_id[]" class="form-control" value="<?= $question['id'] ?>">

                                        </div>
                                    </div>
                                <?php } ?>

                                <button type="submit" class="btn btn-noori">Submit</button>
                            </form>

                        <?php } else { ?>
                            <h4 class="text-noori text-center v-middle">No Assessment Report Found</h4>
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

<!-- <script>
    $(document).ready(function() {
        $('#add-review').submit(function() {
            $('button[type="submit"]').prop('disabled', true);
        });
    });
</script> -->

<!-- <script>
  // Disable the submit button after the form has been submitted
  const form = document.querySelector('form');
  form.addEventListener('submit', () => {
    const submitButton = form.querySelector('button[type="submit"]');
    submitButton.disabled = true;
  });
</script> -->