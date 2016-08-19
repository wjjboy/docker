FROM node:6.4.0-slim
MAINTAINER wjjboy <285701156@qq.com>

RUN cd /tmp \
	&& apt-get update \
	&& apt-get install -y \
		xfonts-base \
		xfonts-75dpi \
		xfonts-100dpi \
		xfonts-scalable \
		xfonts-cyrillic \
		xfonts-wqy \
		xserver-common \
		ttf-wqy-zenhei \
	&& curl -SLO "http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" \
	&& tar -xJf "wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" -C /usr/local --strip-components=1 \
    && rm "wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" \
	&& apt-get clean

CMD ["node"]