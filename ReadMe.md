# aciffmpeg
## A Container Instance of FFMPEG

Wrapper around ffmpeg to generate 5 seconds preview of the video as lightweight animated GIF

A blog post that explains how I build it is comming soon.

## Example
To create a preview of any video you just need to map a volume and specify the file path and optionally mention if the video is vertical.

On Linux/ WSL the command would look like this: 

``` bash
docker run -v /mnt/c/dev/test:/video fboucher/aciffmpeg -i /video/sample.mp4 -v
```

And on PowerShell like that:
``` powershell
docker run -v c/dev/test:/video fboucher/aciffmpeg -i /video/sample.mp4 -v
```

