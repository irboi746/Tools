<?php
function write2File($decoded_content, $filePath){
   $myfile = fopen($filePath, "w") or die("Unable to open file!");
   fwrite($myfile, $decoded_content);
   fclose($myfile);
}

function readFromFile($filePath){
   $lines = file($filePath);
   return $lines;
}
?>
