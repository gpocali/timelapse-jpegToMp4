# timelapse-jpegToMp4
 Transcode 1 hour delayed jpeg to mp4 (H.265) FFmpeg process.  This is a complement to the timelapse-downloader docker.
 
# input.conf
Configuration Location: /etc/timelapse-recorder/input.conf

Format: JSON

Required Entries:
 - frameRate - Number of frames per second to be used via filter

Optional Entries:
 - timezone - tzdata validated timezone name to set local timezone for directory creation
 
# Storage Location
 Storage Location: /mnt/storage
 
# Example Run Command
 docker run -v ./input.conf:/etc/timelapse-jpegToMp4/input.conf -v /mnt/localStorage:/mnt/storage gpocali/timelapse-jpegToMp4:latest
