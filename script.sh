#! /bin/bash
sudo apt update

docker build -t img1 .
docker run -d --name cont1 -p 100:80 img1
docker tag img1 dineshsudha/img1:v2
docker images

while true; do
    read -p "Enter image name: " image_name

    if docker images | grep -wq "$image_name"; then
        echo "✅ Image '$image_name' is present."
        break
    else
        echo "❌ Image not found. Try again."
    fi
done