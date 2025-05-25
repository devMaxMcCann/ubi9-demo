# A makefile makes sense here to allow my team to run the build/run/test the application
IMAGE_NAME=ubi9-demo

.PHONY: build run clean

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --rm $(IMAGE_NAME)

clean:
	docker rmi $(IMAGE_NAME)

# Bonus Target
gradle-build:
	./gradlew build

gradle-run:
	./gradlew run
