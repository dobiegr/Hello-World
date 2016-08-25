c:
pause
cd "C:\Program Files\VideoLAN\VLC\"
pause

vlc.exe -vvv dshow:// :dshow-vdev="Microsoft LifeCam Cinema" :dshow-size="320x240"--sout="#transcode vcodec=h264,vb=800,acodec=aac,ab=128}:standard{mux=ts,dst=\"C:test.mpg\",access=file}"

pause