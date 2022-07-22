VERSION ?= 0.0.0
IMAGE = giantswarm/guestfs:$(VERSION)

.PHONY: build
build:
	docker build -t $(IMAGE) .
