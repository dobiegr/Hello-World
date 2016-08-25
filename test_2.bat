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
pause
echo "%ID%",%ab%,"%cd%","%ComputerName%","%Date%","%Time%">>log.csv
echo "%ID%",%ab%,"%cd%","%ComputerName%","%Date%","%Time%"
 
echo "File_format_correct">>"C:\%ab%%date%.mp4"
c:
pause

cd "C:\Program Files\VideoLAN\VLC\"
pause

vlc.exe dshow:// --sout=#transcode{vcodec=mp2v,vb=1024,fps=30,width=320,acodec=mp2a,ab=128,scale=1,channels=2,deinterlace,audio-sync}:duplicate{dst=standard{access=file,mux=ps,dst="C:\temp2\Output.mpg"},dst=display{noaudio}} --extraintf=logger -vvv

