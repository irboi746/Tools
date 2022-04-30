@echo off

::usage 
:: recursive_hash.bat <path to folder to recursively hash>

for /R %1 %%f in (*) do ( 
   echo %%f >> "%1\output.txt"
   echo MD5 >> "%1\output.txt"
   certutil -hashfile C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\sampleA1_.exe md5 | findstr /R "^[a-fA-F0-9]*$" >> "%1\output.txt"

   echo sha1 >> "%1\output.txt"
   certutil -hashfile C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\sampleA1_.exe sha1 | findstr /R "^[a-fA-F0-9]*$" >> "%1\output.txt"

   echo sha256 >> "%1\output.txt"
   certutil -hashfile C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\sampleA1_.exe sha256 | findstr /R "^[a-fA-F0-9]*$" >> "%1\output.txt"

   echo: >> "%1\output.txt"
)
