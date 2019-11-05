#!/bin/bash

IMAGE_NAME=${IMAGE_NAME:-asciinema-jdk:zulu-11.0.5}
CONTAINER_NAME=${CONTAINER_NAME:-your-sandbox}

echo "Image Name: $IMAGE_NAME"
echo "Container Name: $CONTAINER_NAME"
echo "==== 1/3 : BUILD IMAGE ==="
docker build -t $IMAGE_NAME .

echo "==== 2/3 : START CONTAINER ==="
docker create -it --name $CONTAINER_NAME --hostname $CONTAINER_NAME $IMAGE_NAME /bin/bash

echo "==== 3/3 : COPY SUPPLEMENTS INTO THE CONTAINER ==="
docker cp init_scripts $CONTAINER_NAME:/

echo "==== ALL DONE / ENJOY :) ==="
docker ps -a
docker start -ai $CONTAINER_NAME