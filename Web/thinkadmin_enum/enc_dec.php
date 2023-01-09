<?php
function encode($content)
{
   [$chars, $length] = ['', strlen($string = iconv('UTF-8', 'GBK//TRANSLIT', $content))];
   for ($i = 0; $i < $length; $i++) $chars .= str_pad(base_convert(ord($string[$i]), 10, 36), 2, 0, 0);
   return $chars;
}

function base64decode($content){
    return base64_decode($content);
}
?>
