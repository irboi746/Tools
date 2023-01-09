<?php
function request($url){
   $ch = curl_init();
   curl_setopt($ch, CURLOPT_URL, $url);
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
   $output = curl_exec($ch);
   $output = curl_exec($ch);
   $decoded_output = json_decode($output, true);
   $extracted_output = $decoded_output['data']['content'];
   $curl_error = curl_error($ch);
   curl_close($ch);
   return $extracted_output;
}

function request_tor($url){
   $ch = curl_init();
   curl_setopt($ch, CURLOPT_URL, $url);
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
   curl_setopt($ch, CURLOPT_PROXY, "127.0.0.1:9050");
   curl_setopt($ch, CURLOPT_PROXYTYPE, CURLPROXY_SOCKS5_HOSTNAME);
   $output = curl_exec($ch);
   $decoded_output = json_decode($output, true);
   $extracted_output = $decoded_output['data']['content'];
   $curl_error = curl_error($ch);
   curl_close($ch);
   return $extracted_output;
}
?>
