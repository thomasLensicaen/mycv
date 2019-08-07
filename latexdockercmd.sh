#!/bin/sh
echo "usage: $0 pdflatex -output-directory data/hyperparameter_optimization_detect.pdf hyperparameter_optimization_detect.tex"
IMAGE=latex-docker/base:ubuntu
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" bash -c "cd data && $@"
