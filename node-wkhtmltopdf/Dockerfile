FROM node:6.4.0
MAINTAINER Wujiajun <285701156@qq.com>

RUN cd /tmp \
	&& apt-get update \
	&& apt-get install -y \
		xorg \
		x-window-system-core \
		xfonts-scalable \
		xfonts-cyrillic \
		xfonts-wqy \
		xfonts-utils \ 
		xfonts-encodings \
		xfonts-base \
		xfonts-75dpi \
		xserver-common \
	&& curl -SLO "http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" \
	&& tar -xJf "wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" -C /usr/local --strip-components=1 \
    && rm "wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" \
	&& apt-get clean

CMD ["node"]