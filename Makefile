IMAGE = latex-docker/base

.PHONY: build

build: Dockerfile
	sh build_latex_docke_image.sh

default: build
