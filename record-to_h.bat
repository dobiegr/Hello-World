
C:\Program Files\VideoLAN\VLC\vlc dshow:// :dshow-vdev="Microsoft LifeCam Cinema" :dshow-adev="none" :dshow-size="640x480" :dshow-caching=1000 --run-time=2 -V dummy --intf=dummy --dummy-quiet :sout=#transcode{vcodec=h264,vb=800,scale=1,acodec=mp4a,ab=128,channels=2,samplerate=44100}:std{access=file,mux=ts,dst=h:\mytest.avi}