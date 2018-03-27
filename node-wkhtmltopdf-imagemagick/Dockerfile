FROM wjjboy/node-pdf:latest
MAINTAINER Wujiajun <wujiajun@palmyou.com>

RUN cd /tmp \
	&& apt-get update \
	&& apt-get install -y \
		automake \
		autoconf \
		libtool \
		make \
		gcc \
		g++ \
		ghostscript \
		libnetcdf-dev \
		libgdal-dev \
		python-gdal \
		libpcre3-dev \
		libfftw3-dev \
		--no-install-recommends \
	&& wget https://www.imagemagick.org/download/ImageMagick.tar.gz \
	&& mkdir imageMagick \
    && tar xvzf ImageMagick.tar.gz -C imageMagick/ \
	&& rm ImageMagick.tar.gz \
	&& cd imageMagick \
	&& ./configure \
	&& make -j4 \
	&& make install \
	&& ldconfig /usr/local/lib \
	&& cd .. \
	&& rm -rf imageMagick\
	&& apt-get clean
