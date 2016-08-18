FROM node:6.4.0
MAINTAINER Wujiajun <285701156@qq.com>

RUN cd /tmp \
	&& apt-get update \
	&& apt-get install -y \
		fontconfig \
		xfonts-wqy \
		xfonts-base \
		xfonts-75dpi \
		xserver-common \
	&& curl -SLO "http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" \
	&& tar -xJf "wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" -C /usr/local --strip-components=1 \
    && rm "wkhtmltox-0.12.3_linux-generic-amd64.tar.xz"

ENV LANG=en_US.UTF-8

CMD ["node"]