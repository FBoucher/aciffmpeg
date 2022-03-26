FROM alpine:3.13
LABEL Name=aciffmpeg Version=0.0.2
RUN apk add ffmpeg
COPY ./src/myscript.sh /
RUN chmod +x /myscript.sh
ENTRYPOINT ["/myscript.sh"]