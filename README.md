# gdx2d-videofile
The video files for creating the YouTube demo reel of gdx2d

# Recording setup
I used [*Open Broadcaster software*](https://obsproject.com/index) to record the demos of [gdx2d](https://github.com/hevs-isi/gdx2d). 

I used it in *Game capture mode* with the following settings:

* No stretch to screen
* Encoding x264, using CBR, max bitrate set to 100 mb, no padding, no custom buffer
* Video frame rate set at 60 fps
* Under the *Advanced* tab, I set the *x264 cpu preset* to *ultrafast*, and *encoding profile high*

# Conversion
I then converted the resulting `.flv` to `mp4` using `ffmpeg` with following settings:

    ffmpeg -i "all_shaders.flv" -c:v libx264 -preset slow -pix_fmt yuv420p -profile:v high -filter:v:0 "crop=1280:720:640:360" -c:a copy all_shaders2.mp4

This was done to crop the resulting image to 720p resolution and set the parameters suitable for YouTube.

The resulting `mp4` files are stored here and were edited with *Microsoft Movie maker*. 

The final video can be seen there : https://www.youtube.com/watch?v=eoVrifa1Xd0
