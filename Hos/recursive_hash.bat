@echo off
for /R "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01" %%f in (*) do ( 
   echo %%f >> "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\output.txt"
   echo MD5 >> "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\output.txt"
   certutil -hashfile C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\sampleA1_.exe md5 | findstr /R "^[a-fA-F0-9]*$" >> "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\output.txt"
   echo sha1 >> "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\output.txt"
   certutil -hashfile C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\sampleA1_.exe sha1 | findstr /R "^[a-fA-F0-9]*$" >> "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\output.txt"
   echo sha256 >> "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\output.txt"
   certutil -hashfile C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\sampleA1_.exe sha256 | findstr /R "^[a-fA-F0-9]*$" >> "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\output.txt"
   echo: >> "C:\Users\AdminELS\Desktop\Lab_02_Samples\SET_01\output.txt"
)
