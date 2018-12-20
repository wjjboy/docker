FROM node:8.9.3-slim

LABEL maintainer "wjjboy<285701156@qq.com>"

ADD /fonts/ /usr/share/fonts/chinese

RUN apt-get update \
	&& apt-get install -y \
		fontconfig \
		libssl-dev \
		libxrender-dev \
		libjpeg62 \
		libpng-dev \
		xfonts-base \
		xfonts-utils \
		xfonts-75dpi \
		xfonts-100dpi \
		xserver-common \
		fonts-liberation \
		--no-install-recommends \
	&& apt-get clean \
	&& apt-get autoremove -y

RUN cd /tmp \ 
	&& curl -SLO "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb" \
	&& dpkg --install wkhtmltox_0.12.5-1.stretch_amd64.deb \
	&& rm wkhtmltox_0.12.5-1.stretch_amd64.deb

CMD ["node"]