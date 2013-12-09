<?php
/**
 * Process the capture form
 *
 */

# Includes
require_once("inc/error.inc.php");
require_once("inc/database.inc.php");
require_once("inc/security.inc.php");
require_once("inc/json.pdo.inc.php");

# Retrieve URL arguments
try {
	$p_task_id = $_REQUEST['id'];
}
catch (Exception $e) {
    trigger_error("Caught Exception: " . $e->getMessage(), E_USER_ERROR);
}

# Performs the query and returns XML or JSON
try {
	// Opening up DB connection
	$pgconn = pgConnection();

	// Inserting the observation
	$sql = "SELECT t.id,t.label,tc.photo_link as url FROM task t LEFT OUTER JOIN task_contribution tc ON t.id=tc.task_id";
    $recordSet = $pgconn->prepare($sql);
    $recordSet->execute();

    // Due to a bug in IE8/9, we can't set the response header to application/json like we should 
    //header("Content-Type: application/json");
    // but text/html is a valid replacement
    // Reference: http://blog.degree.no/2012/09/jquery-json-ie8ie9-treats-response-as-downloadable-file/  
    header("Content-Type: text/html");
    echo rs2json($recordSet);
}
catch (Exception $e) {
	trigger_error("Caught Exception: " . $e->getMessage(), E_USER_ERROR);
}

?>