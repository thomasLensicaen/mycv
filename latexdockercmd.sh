#!/bin/sh
echo "usage: $0 pdflatex -output-directory data/presentation/ beamer_pres.tex"
IMAGE=latex-docker/base:ubuntu
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"
