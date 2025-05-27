# A makefile makes sense here to allow my team to run the build/run/test the application
IMAGE_NAME=ubi9-demo

.PHONY: all bash go clean

# Default build all
all: bash

# Bash Targets
bash:
	cd solutions/bash && docker build -f bash.Dockerfile.ubi9 -t ubi9-bash .

bash-run:
	docker run --rm ubi9-bash

# Clean all images
clean:
	docker rmi ubi9-go ubi9-bash || true
