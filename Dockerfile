FROM php:8.2-fpm-alpine

# 在 GitHub 的服务器上安装，绝对不会被 Killed
RUN apk add --no-cache ffmpeg

WORKDIR /app

# 启动 PHP 服务器
CMD ["php", "-S", "0.0.0.0:80", "z_stream.php"]
