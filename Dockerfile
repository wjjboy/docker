FROM ubuntu:12.04
FROM node:6.4.0
MAINTAINER Wujiajun <285701156@qq.com>

RUN echo 'deb http://ru.archive.ubuntu.com/ubuntu/ precise multiverse' >> /etc/apt/sources.list && \
    echo 'deb-src http://ru.archive.ubuntu.com/ubuntu/ precise multiverse' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y fontconfig ttf-mscorefonts-installer xorg libjpeg8 libssl-dev libxrender-dev libjpeg8-dev curl
RUN apt-get install -y xfonts-75dpi
RUN curl --insecure --silent http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-precise-amd64.deb > wkhtmltox.deb
RUN dpkg -i wkhtmltox.deb
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /var/cache/* wkhtmltox.deb

CMD ["node"]