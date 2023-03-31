<?php
function send_mail($email,$subject,$body) {
  // echo "check mail"; die();
    // include($_SERVER['DOCUMENT_ROOT']."/OT/application/third_party/PHPMailer/PHPMailerAutoload.php");
    include($_SERVER['DOCUMENT_ROOT']."/application/third_party/PHPMailer/PHPMailerAutoload.php");
    $mail = new PHPMailer;
    $mail->SMTPDebug = 0; // Enable verbose debug output
    $mail->isSMTP(); // Set mailer to use SMTP
    $mail->Host = 'smtp.mandrillapp.com'; // Specify main and backup SMTP servers
    $mail->SMTPAuth = true; // Enable SMTP authentication
    $mail->Username = 'Noorisys Technologies Pvt Ltd'; // SMTP username
    $mail->Password = 'BhSm9RQr1LRpEhiwt_OsUg'; // SMTP password
    $mail->Port = 587; // TCP port to connect to
    $mail->SMTPSecure = 'tls';
    $mail->From = 'info@nooridev.in'; 
    $mail->FromName = 'Noorisys OTM';
    $mail->addaddress($email); // Name is optional
    $mail->isHTML(true); // Set email format to HTML
    $mail->Subject = $subject;
    $mail->Body =$body;
    
    if(!$mail->send()) {
      return true;
    } else {
      return false;
    }
  }

  
  ?>