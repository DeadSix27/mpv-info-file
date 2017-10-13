# mpv info file script ![Alt text](https://github.com/mpv-player/mpv/raw/master/etc/mpv-icon-8bit-32x32.png)
Simple script to write info files to be used by other programs 

See script for config options.

How to install see: https://github.com/mpv-player/mpv/blob/master/DOCS/man/lua.rst


Example output:
```csv
infofile;csv
filename;exampleVideo
media-title;exampleVideo • 6% completed • Chapter: (2) OP • 40 dropped frames
file-size;1.040 Gb
path;\\BOX\BoxNAS\exampleVideo.mkv
stream-open-filename;\\BOX\BoxNAS\exampleVideo.mkv
stream-path;\\BOX\BoxNAS\exampleVideo.mkv
current-demuxer;mkv
file-format;mkv
stream-pos;220723127
stream-end;1.040 Gb
duration;00:25:01
time-pos;00:01:35
time-remaining;00:23:25
audio-codec-name;flac
audio-codec;flac (FLAC (Free Lossless Audio Codec))
current-ao;wasapi
audio-in-params;
audio-out-params;samplerate=96000\nchannel-count=2\nchannels=stereo\nhr-channels=stereo\nformat=float\n
width;1920
height;1080
video-format;h264
video-codec;h264 (H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10)
video-in-params;
video-out-params;pixelformat=yuv420p\naverage-bpp=12\nplane-depth=8\nw=1920\nh=1080\ndw=1920\ndh=1080\naspect=1.777778\npar=1.000000\ncolormatrix=bt.709\ncolorlevels=limited\nprimaries=bt.709\ngamma=bt.1886\nsig-peak=1.000000\nlight=display\nchroma-location=mpeg2/4/h264\nstereo-in=mono\nstereo-out=mono\nrotate=0\n
current-vo;gpu
container-fps;23.976
estimated-vf-fps;59.940
video-aspect;1.778 (original)
hwdec-current;no
mpv-version;mpv 0.27.0-233-g902ae9ae41
ffmpeg-version;N-87849-g34dbee9f60
vo;gpu
vf;vapoursynth [file=C:\Users\***\AppData\Roaming\SVP4\scripts\8cf72eca.py buffered-frames=4 concurrent-frames=15]\n
vulkan-device;
gpu-api;vulkan

```