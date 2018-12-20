FROM node:8.9.3-slim
MAINTAINER wjjboy <285701156@qq.com>

#ADD /fonts/ /usr/share/fonts/chinese/TrueType

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
		ttf-wqy-microhei \
		ttf-wqy-zenhei \
		ttf-dejima-mincho \
		ttf-umefon \
		ttf-takao \
		ttf-takao-gothic \
		ttf-takao-mincho \
		ttf-takao-pgothic \
		ttf-kochi-gothic \
		ttf-kochi-mincho \
		ttf-sazanami-gothic \
		ttf-sazanami-mincho \
		ttf-nanum-coding \
		fonts-nanum \
		fonts-nanum-extra \
		ttf-baekmuk \
		--no-install-recommends \
	&& curl -SLO "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" \
	&& tar -xJf "wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" -C /usr/local --strip-components=1 \
	&& rm "wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" \
	&& apt-get purge -y --auto-remove xz-utils \
	&& apt-get clean

CMD ["node"]