FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/* \

#RUN tlmgr init-usertree \
#    && tlmgr install scheme-full

WORKDIR /data
VOLUME ["/data"]
