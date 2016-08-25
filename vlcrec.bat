c:
pause
cd C:\Program Files\VideoLAN\VLC\
pause
vlc.exe vlc dshow:// :dshow-vdev="Microsoft LifeCam Cinema" :sout=#duplicate{dst='transcode{vcodec=fmp4,vb=1024,fps=20,scale=1}:standard{access=file,mux=mp4,dst=C:\video_recordings\test.mp4}'}