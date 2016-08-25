c:
pause
cd "C:\Program Files\VideoLAN\VLC\"
pause
vlc.exe vlc dshow:// :dshow-vdev="Microsoft LifeCam Cinema" :sout=#duplicate{dst='transcode{vcodec=mp2v,vb=1024,width=320,fps=20,scale=1, acodec=mp2a}:standard{access=file,mux=mp4,dst=C:\video_recordings\test.mp4}'}