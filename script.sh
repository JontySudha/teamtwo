#! /bin/bash
sudo apt update

docker build -t img1 .
docker run -d --name cont1 -p 100:80 img1
docker tag img1 dineshsudha/img1:v2
docker images

while:

