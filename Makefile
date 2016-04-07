version := $(shell cat VERSION)

build:
	echo "Building version $(version)"
	#docker build -t jayfk/docker-pypi-cache:$(version) -t jayfk/docker-pypi-cache:latest .

bump:
	bumpversion --tag --current-version $(version) minor VERSION

release: bump build
	docker push jayfk/docker-pypi-cache
