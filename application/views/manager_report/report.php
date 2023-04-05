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
</style>

<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <?php if (!empty($questions) && !empty($quarter) && $this->session->userdata('isSubmitted') == 0) { ?>
                            <h5 class="card-title text-center">Assessment Report ( <?= $quarter['month_start'] ?> - <?= $quarter['month_end'].', '. $quarter['year'] ?>) </h5>
                            <form id="add-review" class="mt-4" action="<?= base_url('manager-add-review') ?>" method="POST">
                                
                                <?php foreach ($questions as $question) { ?>
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row mb-2">
                                                <h6><?= $question['question'] ?></h6>
                                            </div>
                                            <div class="row">
                                                <div class="col-8">
                                                    <div class="form-group">
                                                        <label><?= $this->session->userdata('users_group_id') == 13 ? 'TL Ratings' : 'Manager Ratings' ?></label>
                                                        <input type="text" class="form-control" name="comment[<?= $question['id'] ?>]" placeholder="<?= $this->session->userdata('users_group_id') == 13 ? 'TL Comment' : 'Manager Comment' ?>" required>
                                                    </div>
                                                </div>
                                                <div class="col-4 mt-4">
                                                    <div class="stars">
                                                        <input type="radio" id="rating_<?= $question['id'] ?>_5" name="rating[<?= $question['id'] ?>]" value="5" required><label for="rating_<?= $question['id'] ?>_5"><i class="fas fa-star"></i></label>
                                                        <input type="radio" id="rating_<?= $question['id'] ?>_4" name="rating[<?= $question['id'] ?>]" value="4" required><label for="rating_<?= $question['id'] ?>_4"><i class="fas fa-star"></i></label>
                                                        <input type="radio" id="rating_<?= $question['id'] ?>_3" name="rating[<?= $question['id'] ?>]" value="3" required><label for="rating_<?= $question['id'] ?>_3"><i class="fas fa-star"></i></label>
                                                        <input type="radio" id="rating_<?= $question['id'] ?>_2" name="rating[<?= $question['id'] ?>]" value="2" required><label for="rating_<?= $question['id'] ?>_2"><i class="fas fa-star"></i></label>
                                                        <input type="radio" id="rating_<?= $question['id'] ?>_1" name="rating[<?= $question['id'] ?>]" value="1" required><label for="rating_<?= $question['id'] ?>_1"><i class="fas fa-star"></i></label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <input type="hidden" name="quarter_id" class="form-control" value="<?= $quarter['id'] ?>">
                                            <input type="hidden" name="question_id[]" class="form-control" value="<?= $question['id'] ?>">

                                        </div>
                                    </div>
                                <?php } ?>

                                <button type="submit" class="btn btn-noori" <?= $this->session->userdata('isSubmitted') == 1 ? 'disabled' : '' ;?> >Submit</button>
                            </form>

                        <?php } elseif($this->session->userdata('isSubmitted') == 1) { ?>
                            <h4 class="text-noori text-center v-middle">Report Already Submitted</h4>
                        <?php } else { ?>
                            <h4 class="text-noori text-center v-middle">No Assessment Report Found</h4>
                            <?php $this->session->set_userdata('isSubmitted', 0); ?>
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