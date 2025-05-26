# Requirements

## Create a Dockerfile:

- Must use redhat/ubi9-minimal as a base image: https://hub.docker.com/r/redhat/ubi9-minimal
- Within the container: Run a shell script or an application using any programming language of your choice:

```shell
docker build -t my_image . && docker run -d my_image
```

- Call the REST API documented at: https://httpbin.org/#/Response_formats/get_json
- Fetch and extract the title of the slideshow
- Print the result to console
- Push your solution to a publicly accessible GitHub repository


- Bonus: Implement the above using a JVM language of your choice and incorporate either a Maven or Gradle build into the
  solution.

## Installation

```shell
brew install docker # Mac

docker build -f ubi9.bash.Dockerfile -t ubi9-bash .
docker run --rm --name ubi9-bash-demo ubi9-bash
```

# Running

```shell
# Symlinked commands if you'd like to run this on a different language:
ln -sf ubi9.bash.Dockerfile Dockerfile
ln -sf ubi9.go.Dockerfile Dockerfile
```
