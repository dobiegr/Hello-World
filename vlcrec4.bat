c:
pause
cd "C:\Program Files (x86)\VideoLAN\VLC\"
pause

set /p id="Enter Patient Name: " %=%

vlc.exe -vvv dshow:// :dshow-vdev="Microsoft LifeCam Cinema" :dshow-size="320x240"--sout="#transcode vcodec=h264,vb=800,acodec=aac,ab=128}:standard{mux=mp4,dst="C:%ID%.mpg",access=file}"

pause