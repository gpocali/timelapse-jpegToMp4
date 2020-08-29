FROM alpine:latest

RUN sed -i -e "s/#//" /etc/apk/repositories && \
	apk update && \
	apk add --no-cache ffmpeg jq coreutils tzdata

COPY ./input.conf /etc/timelapse-jpegToMp4/input.conf
COPY ./timelapse-jpegToMp4 /bin/timelapse-jpegToMp4
WORKDIR /mnt/storage

RUN chmod +x /bin/timelapse-jpegToMp4

CMD ["timelapse-jpegToMp4"]
