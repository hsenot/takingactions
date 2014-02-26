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
	#$p_asset_id = $_REQUEST['field_asset'];
}
catch (Exception $e) {
    trigger_error("Caught Exception: " . $e->getMessage(), E_USER_ERROR);
}

# Performs the query and returns XML or JSON
try {
	// Opening up DB connection
	$pgconn = pgConnection();

	// Get real-time metrics on the database activity
	$sql = "select ".
            "(select count(*) from task) as selected,".
            "(select count(*) from task_discarded) as clicked,".
            "(select count(*) from task_discarded where (current_timestamp - ts_created) < interval '1 day') as last_day,".
            "(select count(*) from task_discarded where (current_timestamp - ts_created) < interval '4 hours') as last_4hour,".
            "(select count(*) from task_discarded where (current_timestamp - ts_created) < interval '1 hour') as last_hour,".
            "(select count(*) from task_discarded where (current_timestamp - ts_created) < interval '5 minutes') as last_5mn,".
            "(select count(*) from task_discarded where (current_timestamp - ts_created) < interval '1 minute') as last_mn,".
            "(select count(*) from task_discarded where (current_timestamp - ts_created) < interval '10 seconds') as last_10s";
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