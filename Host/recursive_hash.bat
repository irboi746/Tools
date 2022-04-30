@echo off

::usage 
::recursive_hash.bat <path to folder to recursively hash> <output path>

echo filename,MD5,SHA1,SHA256; >> %2\output.txt


for /R %1 %%f in (*) do ( 
   echo %%f >> "%2\output.txt"
::   echo MD5 >> "%2\output.txt"
   certutil -hashfile %%f md5 | findstr /R "^[a-fA-F0-9]*$" >> "%2\output.txt"

::   echo SHA1 >> "%2\output.txt"
   certutil -hashfile %%f sha1 | findstr /R "^[a-fA-F0-9]*$" >> "%2\output.txt"

::   echo SHA256 >> "%2\output.txt"
   certutil -hashfile %%f sha256 | findstr /R "^[a-fA-F0-9]*$" >> "%2\output.txt"

   echo ; >> "%2\output.txt"
)
