FROM wjjboy/node-pdf:latest
MAINTAINER Wujiajun <285701156@qq.com>

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
	&& wget https://www.imagemagick.org/download/ImageMagick-7.0.7-28.tar.gz \
    && tar xvzf ImageMagick-7.0.7-28.tar.gz \
	&& rm ImageMagick-7.0.7-28.tar.gz \
	&& cd ImageMagick-7.0.7-28 \
	&& ./configure \
	&& make -j4 \
	&& make install \
	&& ldconfig /usr/local/lib \
	&& cd .. \
	&& rm -rf ImageMagick-7.0.7-28\
	&& apt-get clean
