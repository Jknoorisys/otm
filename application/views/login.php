



<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url('assets/images/icon.png') ?>">
        <title>Login</title>
        <link href="<?= base_url('dist/css/style.min.css') ?>" rel="stylesheet">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <style>
            
            .light-logo {
              animation-name: bounce;
              animation-duration: 1s;
              animation-delay: 0.5s;
              animation-fill-mode: forwards;
              transform-origin: center;
            }

            @keyframes bounce {
              0% {
                transform: translateY(-100%) rotateX(0deg);
              }
              40% {
                transform: translateY(0) rotateX(360deg);
              }
              60% {
                transform: translateY(0) rotateX(280deg);
              }
              80% {
                transform: translateY(0) rotateX(320deg);
              }
              100% {
                transform: translateY(0) rotateX(0deg);
              }
            }


            .login-btn {
              background-color: #f8004d;
              color: #fff;
              font-size: 16px;
              padding: 10px 20px;
              border: none;
              border-radius: 4px;
              cursor: pointer;
              transition: background-color 0.3s ease;
            }

            .login-btn:hover {
              background-image: linear-gradient(to bottom, #ffc20f, #f57721);
            }


            .text-container {
              width: 100%;
              color: white;
              overflow: hidden;
            }

            .moving-text {
              position: relative;
              animation: slide-in 1s forwards;
            }

            @keyframes slide-in {
              0% {
                left: -100%;
              }
              100% {
                left: 0;
              }
            }

            .auth-wrapper .auth-box {
                background: #ffffff33;
                padding: 20px;
                max-width: 330px;
                width: 90%;
                height: 350px;
                margin: 10% 0;
            }
        </style>
    </head>
    <body>
        <div class="main-wrapper">
            <div class="preloader">
                <div class="lds-ripple">
                    <div class="lds-pos"></div>
                    <div class="lds-pos"></div>
                </div>
            </div>
            <div class="auth-wrapper d-flex no-block justify-content-center align-items-center" style="background:url(<?= base_url('assets/images/big/auth-bg.jpg) center center') ?>;">
                <div class="auth-box">
                    <div id="loginform">
                        <div class="logo">
                            <b class="logo-icon">
                                <img src="<?= base_url('assets/images/icon.png') ?>" alt="homepage" width="70px" height="70px" class="light-logo" style="margin-bottom: 5px;"/>
                            </b>
                            <div class="text-container">
                                <h4 class="moving-text">Noorisys Technologies</h4>
                            </div>
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-12">
                                <form class="form-horizontal m-t-20" id="loginform" action="<?= base_url('confirm-login') ?>" method="POST">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1" style="background-color: #EEF1F8;"><i class="mdi mdi-email"></i></span>
                                        </div>
                                        <input type="text" class="form-control form-control-lg" required name="email" placeholder="Email" aria-label="Username" aria-describedby="basic-addon1">
                                    </div>
                                    <div class="input-group mb-3" id="show_hide_password">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon2" style="background-color: #EEF1F8;"><i class="mdi mdi-eye-off"></i></span>
                                        </div>
                                        <input type="password" class="form-control form-control-lg" required name="pass" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">
                                    </div>

                                    <div class="form-group text-center">
                                        <div class="col-xs-12 p-b-20">
                                            <button class="btn btn-block btn-lg login-btn" type="submit">Log In</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ============================================================== -->
        <!-- All Required js -->
        <!-- ============================================================== -->
        <script src="<?= base_url('assets/libs/jquery/dist/jquery.min.js') ?>"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="<?= base_url('assets/libs/popper.js/dist/umd/popper.min.js') ?>"></script>
        <script src="<?= base_url('assets/libs/bootstrap/dist/js/bootstrap.min.js') ?>"></script>
        <!-- ============================================================== -->
        <!-- This page plugin js -->
        <!-- ============================================================== -->
        <script>
        $('[data-toggle="tooltip"]').tooltip();
        $(".preloader").fadeOut();
        // ============================================================== 
        // Login and Recover Password 
        // ============================================================== 
        $('#to-recover').on("click", function() {
            $("#loginform").slideUp();
            $("#recoverform").fadeIn();
        });
        </script>
    </body>
</html>

<script>
	<?php if($this->session->tempdata('login')){ ?> 
		Swal.fire({
		icon: 'error',
		title: 'Login Failed!',
		})
	<?php } ?>
</script>

<script>
	<?php if($this->session->tempdata('logout')){ ?> 
		Swal.fire({
		icon: 'success',
		title: 'Logged Out!',
		})
	<?php } ?>
</script>

<script>
	$(document).ready(function () {
		$("#show_hide_password span").on('click', function (event) {
			event.preventDefault();
			if ($('#show_hide_password input').attr("type") == "text") {
				$('#show_hide_password input').attr('type', 'password');
				$('#show_hide_password i').addClass("mdi-eye-off");
				$('#show_hide_password i').removeClass("mdi-eye");
			} else if ($('#show_hide_password input').attr("type") == "password") {
				$('#show_hide_password input').attr('type', 'text');
				$('#show_hide_password i').removeClass("mdi-eye-off");
				$('#show_hide_password i').addClass("mdi-eye");
			}
		});
	});
</script>