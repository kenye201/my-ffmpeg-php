FROM php:8.2-cli-alpine

# 安装 ffmpeg
RUN apk add --no-cache ffmpeg

WORKDIR /app

# 启动命令
CMD ["php", "-S", "0.0.0.0:80", "z_stream.php"]
