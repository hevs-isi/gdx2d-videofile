::cmd script

"C:\prog\ffmpegyag\bin\ffmpeg-hi10-heaac.exe" -i "C:\Users\Pierre-André\Videos\2015-04-20-2228-56.flv" -strict experimental -f mp4 -map_chapters -1 -map 0:0 -sn -an -c:v:0 libx264 -b:v:0 8000k -mbd:v:0 rd -mbcmp:v:0 rd -cmp:v:0 rd -precmp:v:0 rd -subcmp:v:0 rd -trellis:v:0 1 -filter:v:0 "crop=1280:720:640:360" -y "C:\Users\Pierre-André\Videos\2015-04-20-2228-56.mp4"

