<style>
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
                            <?php foreach ($reviews as $review) { ?>
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <h6><?= $review['question'] ?></h6>
                                        </div>
                                        <?php if ($this->session->userdata('users_group_id') == 13) { ?>
                                            <div class="row">
                                                <div class="col-8">
                                                    <div class="form-group">
                                                        <label>TL Ratings</label>
                                                        <p><?= $review['tl_comment'] ?  $review['tl_comment'] : '' ?></p>
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
                                                        <label>Manager/CTO Ratings</label>
                                                        <p><?= $review['manager_comment'] ? $review['manager_comment'] : '' ?></p>
                                                    </div>
                                                </div>
                                                <div class="col-4 mt-4">
                                                    <?php for ($i = 1; $i <= 5; $i++) {
                                                        if ($i <= $review['manager_rating']) {
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
                                                        <label>CEO Ratings</label>
                                                        <p><?= $review['ceo_comment'] ? $review['ceo_comment'] : '' ?></p>
                                                    </div>
                                                </div>
                                                <div class="col-4 mt-4">
                                                    <?php for ($i = 1; $i <= 5; $i++) {
                                                        if ($i <= $review['ceo_rating']) {
                                                            echo '<i class="fas fa-star mr-1 text-noori"></i>';
                                                        } else {
                                                            echo '<i class="fas fa-star mr-1 text-grey"></i>';
                                                        }
                                                    } ?>
                                                </div>
                                            </div>
                                        <?php } else { ?>
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
                                                            echo '<i class="fas fa-star mr-1 text-grey"></i>';
                                                        }
                                                    } ?>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-8">
                                                    <div class="form-group">
                                                        <label>CEO Ratings</label>
                                                        <p><?= $review['ceo_comment'] ? $review['ceo_comment'] : '' ?></p>
                                                    </div>
                                                </div>
                                                <div class="col-4 mt-4">
                                                    <?php for ($i = 1; $i <= 5; $i++) {
                                                        if ($i <= $review['ceo_rating']) {
                                                            echo '<i class="fas fa-star mr-1 text-noori"></i>';
                                                        } else {
                                                            echo '<i class="fas fa-star mr-1 text-grey"></i>';
                                                        }
                                                    } ?>
                                                </div>
                                            </div>
                                        <?php } ?>
                                        
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
