@echo off

::usage 
::recursive_template.bat <path to folder to recurse>

for /R %1 %%f in (*) do ( 
::some actions that needs to be looped
)
