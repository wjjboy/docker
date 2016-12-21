FROM node:6.9.2-slim
MAINTAINER wjjboy <285701156@qq.com>

ADD /fonts/ /usr/share/fonts/chinese/TrueType

RUN cd /tmp \
	&& apt-get update \
	&& apt-get install -y \
		xz-utils \
		fontconfig \
		libssl-dev \
		libxrender-dev \
		xfonts-base \
		xfonts-75dpi \
		xserver-common \
		--no-install-recommends \
	&& curl -SLO "http://download.gna.org/wkhtmltopdf/0.12/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" \
	&& tar -xJf "wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" -C /usr/local --strip-components=1 \
	&& rm "wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" \
	&& apt-get purge -y --auto-remove xz-utils \
	&& apt-get clean

CMD ["node"]