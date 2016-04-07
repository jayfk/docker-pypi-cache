build:
	$(eval version := $(shell cat VERSION))
	echo "Building version $(version)"
	docker build -t jayfk/docker-pypi-cache:$(version) -t jayfk/docker-pypi-cache:latest .

bump:
	$(eval version := $(shell cat VERSION))
	bumpversion --tag --current-version $(version) minor VERSION

release: bump build
	docker push jayfk/docker-pypi-cache
