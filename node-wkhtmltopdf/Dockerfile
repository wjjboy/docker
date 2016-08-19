FROM node:6.4.0-slim
MAINTAINER wjjboy <285701156@qq.com>

ADD /fonts/ /usr/share/fonts/chinese/TrueType

RUN buildDeps='xz-utils' \
    && set -x \
	&& cd /tmp \
	&& apt-get update \
	&& apt-get install -y $buildDeps --no-install-recommends \\
		fontconfig \
		libssl-dev \
		libxrender-dev \
		xfonts-base \
		xfonts-75dpi \
		xserver-common \
	&& curl -SLO "http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" \
	&& tar -xJf "wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" -C /usr/local --strip-components=1 \
    && rm "wkhtmltox-0.12.3_linux-generic-amd64.tar.xz" \
	&& apt-get purge -y --auto-remove $buildDeps

CMD ["node"]