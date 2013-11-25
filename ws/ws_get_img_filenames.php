<?php
/**
 * Returns the entire dataset for a given client
 */

# Includes
require_once("inc/error.inc.php");
require_once("inc/security.inc.php");
require_once("inc/json.pdo.inc.php");

# Performs the query and returns XML or JSON
try {
	$rowOutput = '';
	if ($handle = opendir('../images')) {
	    while (false !== ($entry = readdir($handle))) {
	        if ($entry != "." && $entry != "..") {
	        	if (strlen($rowOutput) > 0) $rowOutput .= ',';
	            $rowOutput .= '"' . $entry . '"';
	            //echo $rowOutput;
	        }
    }
    	closedir($handle);
	}
    //Total rows
    $output = '{"rows":['.$rowOutput.']}';

	//For jsonp
	if (isset($_REQUEST['callback'])) {
		$output = $_REQUEST['callback'] . '(' . $output . ');';
	}

	// Required to cater for IE
	header("Content-Type: text/html");
	echo $output;
}
catch (Exception $e) {
	trigger_error("Caught Exception: " . $e->getMessage(), E_USER_ERROR);
}

?>