# DOCKER-CONTAINERIZATION
Install docker and start the docker desktop
signup in dockerhub for uploading images

docker commands 
docker build -t nickos-website:2.0.0 .           #.......Builds the image -->
docker run -d -p 8080:80 --name nickos nickos-website:2.0.0     #..... Runs the container on port 8080 on your browser
docker images
http://localhost:8080              # ......


To push a Docker image to Docker Hub, follow these steps.

1. Log in to Docker Hub
docker login then your Docker Hub username and password (or access token)
2. Tag the image with your Docker Hub username with (docker tag <appName> <dockerhub-username>/<myAppName>:<tag>)...... docker tag nickos-website:2.0.0 obianuju/nickos-website:2.0.0 
3. Push the image with (docker push <dockerhub-username>/<repository>:<tag> )
docker push obianuju/nickos-website:2.0.0
docker push obianuju/nickos-website:latest
4. pulls the images from Dockerhub
docker pull obianuju/nickos-website:2.0.0
docker pull obianuju/nickos-website:latest


1. Opening a shell inside a running Docker container
docker container ls
docker exec -it <container-name-or-id> /bin/bash


DOVKER COMMANDS
docker images or docker image ls
# List local images
docker images

# Pull an image from a registry
docker pull nginx

# Build an image from a Dockerfile
docker build -t myapp .

# Remove an image
docker rmi myapp

# Tag an image
docker tag myapp username/myapp:latest
# List running containers
docker ps

# List all containers
docker ps -a

# Run a container
docker run nickos-website:2.0.0

# Run in detached mode
docker run -d nickos-website:2.0.0

# Run with port mapping
docker run -d -p 8080:80 nickos-website:2.0.0

# Assign a container a name
docker run -d --name nickos nickos-website:2.0.0

# Stop a container
docker stop <container_id>

# Start a stopped container
docker start <container_id>

# Restart a container
docker restart <container_id>

# Remove a container
docker rm <container_id>

# Remove a running container forcefully
docker rm -f <container_id>

# View container logs
docker logs <container_id>

# Follow logs in real time
docker logs -f <container_id>

# Open a shell inside a running container
docker exec -it <container_id> bash

# If bash isn't available
docker exec -it <container_id> sh