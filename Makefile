export PWD=`pwd`

.PHONY: ## build
b:
	docker build . -f Dockerfile.cpuonly -t "seancook/openpose-cpu"

.PHONY: ## run
r:
	docker run -v $(PWD)/data:/data \
	-it seancook/openpose-cpu -display 0 \
	-image_dir /data \
	-write_images /data