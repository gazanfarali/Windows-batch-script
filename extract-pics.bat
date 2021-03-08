@ECHO OFF

:: Script to move pictures from Iphone sub-folder to dedicated folder. 

:: Setting up logfile.

SET WD=F:\Pics

SET >> %WD%\Copy.log

::assigning directory locations

SET S=F:\Dell-laptop-data :: source of folder
SET D=F:\Pics :: Destination folder


ECHO Attempting moving pics using batch file!

FOR /R %S% %%i IN (*.JPG) DO Xcopy "%%i" %D%  >> %WD%\Copy.log

ECHO all done

ECHO !!!!Opening Pics Folder!!!!!!

%SystemRoot%\explorer.exe %D%

REM you can either use DO Move instead of DO Xcopy and change the folder name to sub-folder