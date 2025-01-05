<?php
function get_ext($pdo,$fname)
{

	$up_filename=$_FILES[$fname]["name"];
	$file_basename = substr($up_filename, 0, strripos($up_filename, '.')); // strip extention
	$file_ext = substr($up_filename, strripos($up_filename, '.')); // strip name
	return $file_ext;
}

function ext_check($pdo,$allowed_ext,$my_ext) 
{

	$arr1 = array();
	$arr1 = explode("|",$allowed_ext);	
	$count_arr1 = count(explode("|",$allowed_ext));	

	for($i=0;$i<$count_arr1;$i++)
	{
		$arr1[$i] = '.'.$arr1[$i];
	}
	

	$str = '';
	$stat = 0;
	for($i=0;$i<$count_arr1;$i++)
	{
		if($my_ext == $arr1[$i])
		{
			$stat = 1;
			break;
		}
	}

	if($stat == 1)
		return true; // file extension match
	else
		return false; // file extension not match
}


function get_ai_id($pdo,$tbl_name) 
{
	$statement = $pdo->prepare("SHOW TABLE STATUS LIKE '$tbl_name'");
	$statement->execute();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	foreach($result as $row)
	{
		$next_id = $row['Auto_increment'];
	}
	return $next_id;
}

function format_yen_for_display($yenAmount)
{
    /*
        Converts Japanese currency to easily readable local format

        10,000 yen should read 1万
        100,000 yen should read 10万
        1,000,000 yen should read 100万
        1,259,000 yen should read 125万 9,000円
    */

    if($yenAmount > 10000)
    {
        //amount over 1万
        $manYen = floor($yenAmount/10000);

        //amount under 1万
        $remainderYen = ($yenAmount - ($manYen * 10000));

        //concat
        $returnNum = "<span class=\"ylarge\">" . $manYen . "万</span>";

        //if remainder is more than zero, show it
        if($remainderYen > 0)
        {
            //format remainder with thousands separator
            $remainderYen = number_format($remainderYen);

            $returnNum .= "<span class=\"ysmall\">" . $remainderYen ."円</span>";
        }
    }
    else
    {
        $returnNum = "<span class=\"ylarge\">" . $yenAmount . "円</span>";
    }
    return $returnNum;
}
