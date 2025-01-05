<?php session_start();
   $blogID = '4987551402515945969';
   $authToken = "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";
   
   // The data to send to the API
   $postData = array(
       'kind' => 'blogger#post',
       'blog' => array('id' => $blogID),
       'title' => 'This is a test',
       'content' => 'Testing 1 2 3...',
   'labels' => array('Test1, Test2, Test3')
   );
   
   // Setup cURL
   $ch = curl_init('https://www.googleapis.com/blogger/v3/blogs/'.$blogID.'/posts/');
   curl_setopt_array($ch, array(
       CURLOPT_POST => TRUE,
       CURLOPT_RETURNTRANSFER => TRUE,
       CURLOPT_HTTPHEADER => array(
           'Authorization: OAuth '.$authToken,
           'Content-Type: application/json'
       ),
       CURLOPT_POSTFIELDS => json_encode($postData)
   ));
   
   // Send the request
   $response = curl_exec($ch);
   
   // Check for errors
   if($response === FALSE){
       die(curl_error($ch));
   }
   
   // Decode the response
   $responseData = json_decode($response, TRUE);
   
   // Print the date from the response
   print_r($responseData);
    ?>