# DOCKER-CONTAINERIZATION
Install docker and start the docker desktop
signup in dockerhub for uploading images

docker commands 
docker build -t nickos-website:1.0.0 .           #.......Builds the image -->
docker run -d -p 8080:80 --name nickos nickos-website:1.0.0     #..... Runs the container on port 8080 on your browser
docker images
http://localhost:8080              # ......


To push a Docker image to Docker Hub, follow these steps.

1. Log in to Docker Hub
docker login        then your Docker Hub username and password (or access token)
2. Tag the image with your Docker Hub username with <dockerhub-username>/<repository>:<tag>
docker tag nickos01 nickos-website:1.0.0
3. Push the image
docker push nickos-website:1.0.0
docker push nickos-website:latest
4. pulls the images from Dockerhub
docker pull nickos-website:1.0.0
docker pull nickos-website:latest


1. Opening a shell inside a running Docker container
docker container ls
docker exec -it <container-name-or-id> /bin/sh