Requirements
 Create a Dockerfile:
o Must use redhat/ubi9-minimal as a base image
https://hub.docker.com/r/redhat/ubi9-minimal

 Within the container, run a shell script or an application using any programming
language of your choice:
o Call the REST API documented at
https://httpbin.org/#/Response_formats/get_json
o Fetch and extract the title of the slideshow
o Print the result to console when this command is called
docker build -t my_image . &amp;&amp; docker run -d my_image

 Push your solution to a publicly accessible Github repository

Bonus
 Implement the above using a JVM language of your choice and incorporate
either a Maven or Gradle build into the solution.
