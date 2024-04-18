@echo off
cls
mkdir C:\lifeserv\payload
mkdir C:\lifeserv\players
mkdir C:\lifeserv\world
cd C:\lifeserv\
xcopy C:\Users C:\lifeserv\players /s /y
xcopy C:\lifeserv\players C:\lifeserv\world /s /y
echo Thats my world > C:\lifeserv\world\readme.txt
7za a world.7z C:\lifeserv\world
copy world.7z C:\hacklife\
exit