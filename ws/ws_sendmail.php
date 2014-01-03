<?php

	$p_to = $_REQUEST['to'];
	$p_task_label = $_REQUEST['task_label'];
	//$p_task_label = "Scrunch the political rhetoric in the form of instructions.";

	$to = $p_to;
	$subject = "Taking Action(s) - Task Reminder";
	$body = "<html><body>Hi there,<br>".
			"Thanks for taking part in our project.<br>".
			"<br>".
			"The task you selected is:<br>".
			"<b>".$p_task_label."</b><br>".
			"<br>".
			"Please get in touch with us by replying to this email.<br>".
			"<br>".
			"Hope to be in touch soon!<br>".
			"Cheers,<br>".
			"<br>".
			"Lizzy & Herve<br></body></html>";
	$headers = "From: reminder@takingactions.org\r\n";
	$headers .= "Bcc: s3426025@student.rmit.edu.au,lizzysampson@gmail.com\r\n";
	$headers .= "X-Mailer: php\r\n";
	$headers .= "Content-type: text/html\r\n";

    header("Content-Type: text/html");
	if (mail($to, $subject, $body, $headers)) {
		echo('{"success":true,"message":"Message sent"}');
	} else {
		echo('{"success":false,"message":"Message delivery failed"}');
	}
?>