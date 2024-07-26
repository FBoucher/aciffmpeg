# aciffmpeg
## A Container Instance of FFMPEG

Wrapper around ffmpeg to generate 5 seconds preview of the video as lightweight animated GIF

A blog post that explains how I build it is coming soon.

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

## Optional Start Parameter
You can also specify an optional start parameter to set the start position of the video. The default value is `00:00:00.500`.

On Linux/ WSL the command would look like this:

``` bash
docker run -v /mnt/c/dev/test:/video fboucher/aciffmpeg -i /video/sample.mp4 -s 00:00:01.000
```

And on PowerShell like that:
``` powershell
docker run -v c/dev/test:/video fboucher/aciffmpeg -i /video/sample.mp4 -s 00:00:01.000
```
