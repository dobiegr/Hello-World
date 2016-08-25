cls
@echo off
color 17
@echo *************************************************************
@echo *                                                           *
@echo *            NHS Lothian Child Protection Team              *
@echo *                                                           *
@echo *                                                           *
@echo *Please complete the following responses to start recording *
@echo *                                                           *
@echo *************************************************************

set /p id="Enter Patient Name: " %=%
set /p ab="Enter CHI number: " %=%
set /p cd="Enter Your Name: " %=%
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "fullstamp=%ab%%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"

if not exist "C:\temp2\" md c:\temp2

if not exist "C:\temp2\log.csv" echo "Patient Name","Patient CHI","Examiner Name","Computer","Date","Time","File name">C:\temp2\log.csv
echo "%ID%",%ab%,"%cd%","%ComputerName%","%Date%","%Time%","%fullstamp%.MP4">>C:\temp2\log.csv
c:
cd "C:\Program Files\VideoLAN\VLC\"
cls
@echo *************************************************************
@echo * Recording starting                                        *
@echo * - Wait for recording window to appear (takes 15 seconds)  *
@echo * close recording window to complete recording              *
@echo *                                                           *
@echo *************************************************************

vlc.exe dshow:// --sout=#transcode{vcodec=mp2v,vb=1024,fps=30,width=320,acodec=mp2a,ab=128,scale=1,channels=2,deinterlace,audio-sync}:duplicate{dst=standard{access=file,mux=mp4,dst="C:\temp2\temp.mp4"},dst=display{noaudio}}  -vvv

cd C:\temp2\
echo File has been recorded to local hard disk and will be called
echo %fullstamp%.mp4
echo an entry has been placed in the local recording log
ren temp.mp4 %fullstamp%.mp4
@echo *************************************************************
@echo * Recording completed                                       *
@echo * Do not forget to copy files to the server                 *
@echo * To perform another recording, double click on icon again  *
@echo * This window is about to close                             *
@echo *************************************************************
pause
