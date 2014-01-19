<?php

	require '../../../phpmailer/PHPMailerAutoload.php';
	$mail = new PHPMailer;

	// Extracting parameter values
	$p_to = $_REQUEST['to'];
	$p_task_label = $_REQUEST['task_label'];
	$p_template = $_REQUEST['template'];
	$p_subject = $_REQUEST['subject'];

	// Retrieving email template and substituting variables	
	$body = file_get_contents('../'.$p_template);
	$body = str_replace('%task_label%',$p_task_label,$body);

	// Other email parameters
	$mail->From = 'reminder@takingactions.org';
	$mail->FromName = 'Taking Action(s)';
	$mail->addAddress($p_to);
	$mail->addReplyTo('reply@takingactions.org', 'Taking Action(s)');
	$mail->addBCC('s3426025@student.rmit.edu.au');
	$mail->addBCC('lizzysampson@gmail.com');
	$mail->isHTML(true);                                  // Set email format to HTML

	$mail->Subject = $p_subject;
	$mail->Body    = $body;
	//$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

	header("Content-Type: text/html");
	if(!$mail->send()) {
		echo('{"success":false,"message":"Message delivery failed:'.$mail->ErrorInfo.'"}');	
	}
	else
	{
		echo('{"success":true,"message":"Message sent"}');
	}

?>
