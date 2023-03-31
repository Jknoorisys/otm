<style>
		.stars {
			display: inline-block;
			margin: 5px 0;
		}

		.stars input[type="radio"] {
			display: none;
		}

		.stars label {
			display: inline-block;
			cursor: pointer;
			color: #ddd;
		}

		.stars label:before {
			content: "\2605";
			margin-right: 5px;
		}

		.stars input[type="radio"]:checked ~ label {
			color: #ffcc00;
		}
	</style>

<div class="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">Assessment Report ( <?= $question_group['month_start'] ?> - <?= $question_group['month_end'] ?>) </h3>
                        <form class="mt-4" action="<?= base_url('add-review') ?>" method="POST">

                            <?php foreach ($questions as $question) { ?>
                                <!-- <div class="card">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <h4><?= $question['question'] ?></h4>
                                        </div>
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label>Developer Ratings</label>
                                                    <input type="text" class="form-control" name="comment" placeholder="Developer Comment" required>
                                                </div>
                                            </div>
                                            <div class="col-4 mt-4">
                                                <div class="stars">
                                                    <input type="radio" id="developer_1" name="developer_rating" value="1"><label for="developer_1"></label>
                                                    <input type="radio" id="developer_2" name="developer_rating" value="2"><label for="developer_2"></label>
                                                    <input type="radio" id="developer_3" name="developer_rating" value="3"><label for="developer_3"></label>
                                                    <input type="radio" id="developer_4" name="developer_rating" value="4"><label for="developer_4"></label>
                                                    <input type="radio" id="developer_5" name="developer_rating" value="5"><label for="developer_5"></label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label>TL Ratings</label>
                                                    <input type="text" class="form-control" name="comment" placeholder="TL Comment" readonly>
                                                </div>
                                            </div>
                                            <div class="col-4 mt-4">
                                                <div class="stars">
                                                    <input type="radio" id="team_lead_1" name="team_lead_rating" value="1"><label for="team_lead_1"></label>
                                                    <input type="radio" id="team_lead_2" name="team_lead_rating" value="2"><label for="team_lead_2"></label>
                                                    <input type="radio" id="team_lead_3" name="team_lead_rating" value="3"><label for="team_lead_3"></label>
                                                    <input type="radio" id="team_lead_4" name="team_lead_rating" value="4"><label for="team_lead_4"></label>
                                                    <input type="radio" id="team_lead_5" name="team_lead_rating" value="5"><label for="team_lead_5"></label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label>Manager/CTO Ratings</label>
                                                    <input type="text" class="form-control" name="comment" placeholder="Manager/CTO Comment" readonly>
                                                </div>
                                            </div>
                                            <div class="col-4 mt-4">
                                                <div class="stars">
                                                    <input type="radio" id="manager_1" name="manager_rating" value="1"><label for="manager_1"></label>
                                                    <input type="radio" id="manager_2" name="manager_rating" value="2"><label for="manager_2"></label>
                                                    <input type="radio" id="manager_3" name="manager_rating" value="3"><label for="manager_3"></label>
                                                    <input type="radio" id="manager_4" name="manager_rating" value="4"><label for="manager_4"></label>
                                                    <input type="radio" id="manager_5" name="manager_rating" value="5"><label for="manager_5"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                            <?php } ?>

                            <button type="submit" class="btn btn-noori" id="add_review">Submit</button>
                        </form>
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
