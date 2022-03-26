

Building the image

``` bash

clear && docker build -t fboucher/aciffmpeg .

```

Generating horizontal
``` bash

docker run --rm -v /mnt/c/dev/docker/aciffmpeg:/video -w /video fboucher/aciffmpeg ffmpeg -r 60 -i NotInTheSky.mp4 -loop 0 -vf scale=320:-1 -c:v gif -f gif -ss 00:00:00.500 -r 10 -t 5 - > NotInTheSky_p.gif

```

Generating vertival
``` bash

docker run --rm -v /mnt/c/dev/docker/aciffmpeg:/video -w /video fboucher/aciffmpeg ffmpeg -r 60 -i NotInTheSky.mp4 -loop 0 -vf scale=-1:320 -c:v gif -f gif -ss 00:00:00.500 -r 10 -t 5 - > NotInTheSky_p.gif

```




Compare to jrottenberg verion

``` bash

docker run --rm -v /mnt/c/dev/docker/aciffmpeg:/video -w /video jrottenberg/ffmpeg -r 60 -i NotInTheSky.mp4 -loop 0 -vf scale=320:-1 -c:v gif -f gif -ss 00:00:00.500 -r 10 -t 5 - > NotInTheSky.gif

```


docker tag  0f42a672d000 fboucher/aciffmpeg:1.0


 docker push fboucher/aciffmpeg:1.0




## New Flavor

docker run -v /mnt/c/dev/docker/aciffmpeg:/video -w /video fboucher/aciffmpeg -i NotInTheSky.mp4 -v