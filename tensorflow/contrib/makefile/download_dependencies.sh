#!/bin/bash -x

mkdir make/downloads

EIGEN_HASH=a5e9085a94e8
curl "https://bitbucket.org/eigen/eigen/get/${EIGEN_HASH}.tar.gz" \
-o /tmp/eigen-${EIGEN_HASH}.tar.gz
tar xzf /tmp/eigen-${EIGEN_HASH}.tar.gz -C make/downloads/

git clone https://github.com/google/re2.git make/downloads/re2
git clone https://github.com/google/gemmlowp.git make/downloads/gemmlowp

JPEG_VERSION=v9a
curl "http://www.ijg.org/files/jpegsrc.${JPEG_VERSION}.tar.gz" \
-o /tmp/jpegsrc.${JPEG_VERSION}.tar.gz
tar xzf /tmp/jpegsrc.${JPEG_VERSION}.tar.gz -C make/downloads

PNG_VERSION=v1.2.53
curl -L "https://github.com/glennrp/libpng/archive/${PNG_VERSION}.zip" \
-o /tmp/pngsrc.${PNG_VERSION}.zip
unzip /tmp/pngsrc.${PNG_VERSION}.zip -d make/downloads
