<?php
/**
 * Creates JSON ( http://www.json.org/ ) from an ADODB record set
 *
 * @param 		object 		$rs 		- record set object
 * @return 		string		- resulting json string
*/

function rs2geojson($rs)
{
	if (!$rs) {
		trigger_error("Caught Exception: bad recordset passed to rs2json function.", E_USER_ERROR);
		return false;
	}

	$output = '';
	$rowOutput = '';

    $rowCounter = 0;



        while ($row  = $rs->fetch(PDO::FETCH_ASSOC))
		{
			if (strlen($rowOutput) > 0) $rowOutput .= ',';
            $rowOutput .= '{"Type":"Feature",';

			$cols = count($row)-1;
			$colCounter = 1;
			$rowOutput .= '"properties":{';
			foreach ($row as $key => $val)
			{
				if ($key != "the_geom"){
					$rowOutput .= '"' . $key . '":';
					$rowOutput .= '"' . trim($val) . '"';
				}

				if ($key == "the_geom"){
					$rowOutput .= '},"geometry":';
					$rowOutput .= trim($val);
				}

				if ($colCounter != $cols and $key != "the_geom")
				{
					$rowOutput .= ',';
				}
				$colCounter++;
			}
			$rowOutput .= '}';

			$rowCounter++;
		}

        if ($rowCounter == 0) $output = '"row"';
        else $output = '[' . $rowOutput . ']';


	$output .= '}';

    //Total rows
    $output = '{"type": "FeatureCollection" ,"features":'.$output;

	//For jsonp
	if (isset($_REQUEST['callback'])) {
		$output = $_REQUEST['callback'] . '(' . $output . ')';
	}

	return $output;
}

/****
*
* Functions that formats the resulting JSON in a way that is expected by Ext forms
*
*/
function fs2json($rs)
{
	if (!$rs) {
		trigger_error("Caught Exception: bad recordset passed to rs2json function.", E_USER_ERROR);
		return false;
	}

	$output = '';
	$rowOutput = '';

    $rowCounter = 0;



        while ($row  = $rs->fetch(PDO::FETCH_ASSOC))
		{
			if (strlen($rowOutput) > 0) $rowOutput .= ',';
            $rowOutput .= '{';

			$cols = count($row);
			$colCounter = 1;
			foreach ($row as $key => $val)
			{
				$rowOutput .= '"' . $key . '":';
				if ($key == "json" || $key == "geojson"){
					$rowOutput .= trim($val);
				}else{
					$rowOutput .= '"' . trim($val) . '"';
				}

				if ($colCounter != $cols)
				{
					$rowOutput .= ',';
				}
				$colCounter++;
			}
			$rowOutput .= '}';
			$rowCounter++;
		}

        if ($rowCounter == 0) $output = '[]';
        else $output = $rowOutput;


	$output .= '}';

    //Total rows
    $output = '{"success":"true","data":'.$output;

	//For jsonp
	if (isset($_REQUEST['callback'])) {
		$output = $_REQUEST['callback'] . '(' . $output . ')';
	}

	return $output;
}



/**
 * Creates JSON ( http://www.json.org/ ) from multiple ADODB record sets
 *
 * @param 		array 		$rs 	- an array of arrays containing geotable name and the recordset
 *									array(
 *										[0] => array('geotable' => 'streets, 'recordSet' => $rs_streets),
 *										[1] => array('geotable' => 'neighborhoods', 'recordSet' => $rs_neighborhoods)
 *									)
 * @return 		string				- resulting json string
*/

function multi_rs2json($queries)
{
	$multiOutput = '';

	foreach ($queries as $query) {
		$rs = $query['recordSet'];

		if (!$rs) {
    		trigger_error("Caught Exception: bad query passed to multi_rs2json function.", E_USER_ERROR);
			return false;
		}

		if ($rs->rowCount()>0){
			$layerOutput = '';
			$rowOutput = '';
			$rowCounter = 0;

			while ($row = $rs->fetch(PDO::FETCH_ASSOC)) {

      			$rowOutput .= (strlen($rowOutput) ? ',' : '') . '{"row":{';

				$cols = count($row);
				$colCounter = 1;

				foreach ($row as $key=>$val) {

					$rowOutput .= '"'.$key.'":';
					$rowOutput .= '"'.trim($val).'"';

					if ($colCounter != $cols)
						$rowOutput .= ',';

					$colCounter++;
				}
				$rowOutput .= '}}';
				$rowCounter++;

			}

			$layerOutput = '['.$rowOutput.']';

			$multiOutput .= (strlen($multiOutput)>0 ? ',' : '') . '{"geotable":"'.$query['geotable'].'","total_rows":"'.$rowCounter.'","rows":'.$layerOutput.'}';
		}

	}

	$totalOutput = '{"results":['.$multiOutput.']}';

	/*** For jsonp ***/
	if (isset($_REQUEST['callback'])) {
		$totalOutput = $_REQUEST['callback'].'('.$totalOutput.')';
	}

	return $totalOutput;
}

?>
