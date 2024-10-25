#!/bin/bash


# construye la imagen
docker build -f Dockerfile.wepai -t webapi:v0.1 .

# construye el contenedor
docker run --name webapi -p 8080:8080 -d webapi:v0.1

