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
 
echo File_format_correct C:\%ab%%date%.mp4
c:
pause

cd "C:\Program Files (x86)\VideoLAN\VLC\"
pause
vlc.exe -vvv dshow:// :dshow-vdev="Microsoft LifeCam Cinema" :dshow-size="320x240"--sout=#transcode{vcodec=mp4v,vb=1024,scale=1,acodec=mpga,ab=192,channels=2}:duplicate{dst=display,dst=std{access=file,mux=mp4,dst=C:\temp2\abcd.mp4}}  

