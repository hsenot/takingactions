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
	$p_task_label = $_REQUEST['task_label'];
}
catch (Exception $e) {
    trigger_error("Caught Exception: " . $e->getMessage(), E_USER_ERROR);
}

# Performs the query and returns XML or JSON
try {
	// Opening up DB connection
	$pgconn = pgConnection();

    // Inserting the observation
    $sql = "INSERT INTO task (label) VALUES ('".$p_task_label."');";
    $sql = sanitizeSQL($sql);
    //echo $sql;
    $recordSet = $pgconn->prepare($sql);
    $recordSet->execute();

    // Getting the observation number just attributed (somehow curr_val does not always work)
    $sql = "SELECT last_value from task_id_seq;";
    $sql = sanitizeSQL($sql);
    //echo $sql;
    $recordSet = $pgconn->prepare($sql);
    $recordSet->execute();

    while ($row  = $recordSet->fetch())
    {
        $inserted_id = $row[0];
    }

    // Due to a bug in IE8/9, we can't set the response header to application/json like we should 
    //header("Content-Type: application/json");
    // but text/html is a valid replacement
    // Reference: http://blog.degree.no/2012/09/jquery-json-ie8ie9-treats-response-as-downloadable-file/  
    header("Content-Type: text/html");
    echo '{"success":"true","inserted_id":'.$inserted_id.'}';
}
catch (Exception $e) {
	trigger_error("Caught Exception: " . $e->getMessage(), E_USER_ERROR);
}

?>