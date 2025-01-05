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

function format_yen_for_display($lonk)
{
	return $lonk;
}
function short_url($longURL,$accessToken) {
    $bitlyAPI = 'https://api-ssl.bitly.com/v4/shorten';
    $tag = "amazon-primeday-2023-in-japan-22";
 
    $data = array(
        'long_url' => $longURL. "/?tag=" . $tag
    );

    $options = array(
        'http' => array(
            'header' => "Authorization: Bearer $accessToken\r\n".
                        "Content-Type: application/json\r\n",
            'method' => 'POST',
            'content' => json_encode($data),
        ),
    );

    $context = stream_context_create($options);
    $response = file_get_contents($bitlyAPI, false, $context);

    if ($response === false) {
        return false;
    }

    $responseData = json_decode($response, true);

    if (isset($responseData['link'])) {
        return $responseData['link'];
    }

    return false;
}
function indentContent($content, $tab="\t"){
    $content = preg_replace('/(>)(<)(\/*)/', "$1\n$2$3", $content); // add marker linefeeds to aid the pretty-tokeniser (adds a linefeed between all tag-end boundaries)
    $token = strtok($content, "\n"); // now indent the tags
    $result = ''; // holds formatted version as it is built
    $pad = 0; // initial indent
    $matches = array(); // returns from preg_matches()
    // scan each line and adjust indent based on opening/closing tags
    while ($token !== false && strlen($token)>0){
        $padPrev = $padPrev ?: $pad; // previous padding //Artis
        $token = trim($token);
        // test for the various tag states
        if (preg_match('/.+<\/\w[^>]*>$/', $token, $matches)){// 1. open and closing tags on same line - no change
            $indent=0;
        }elseif(preg_match('/^<\/\w/', $token, $matches)){// 2. closing tag - outdent now
            $pad--;
            if($indent>0) $indent=0;
        }elseif(preg_match('/^<\w[^>]*[^\/]>.*$/', $token, $matches)){// 3. opening tag - don't pad this one, only subsequent tags (only if it isn't a void tag)
            foreach($matches as $m){
                if (preg_match('/^<(area|base|br|col|command|embed|hr|img|input|keygen|link|meta|param|source|track|wbr)/im', $m)){// Void elements according to http://www.htmlandcsswebdesign.com/articles/voidel.php
                    $voidTag=true;
                    break;
                }
            }
            $indent = 1;
        }else{// 4. no indentation needed
            $indent = 0;
        }

        if ($token == "<textarea>") {
            $line = str_pad($token, strlen($token) + $pad, $tab, STR_PAD_LEFT); // pad the line with the required number of leading spaces
            $result .= $line; // add to the cumulative result, with linefeed
            $token = strtok("\n"); // get the next token
            $pad += $indent; // update the pad size for subsequent lines
        } elseif ($token == "</textarea>") {
            $line = $token; // pad the line with the required number of leading spaces
            $result .= $line . "\n"; // add to the cumulative result, with linefeed
            $token = strtok("\n"); // get the next token
            $pad += $indent; // update the pad size for subsequent lines
        } else {
            $line = str_pad($token, strlen($token) + $pad, $tab, STR_PAD_LEFT); // pad the line with the required number of leading spaces
            $result .= $line . "\n"; // add to the cumulative result, with linefeed
            $token = strtok("\n"); // get the next token
            $pad += $indent; // update the pad size for subsequent lines
            if ($voidTag) {
                $voidTag = false;
                $pad--;
            }
        }           

    return $result;
}


