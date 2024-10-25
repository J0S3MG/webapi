#!/bin/bash


# construye la imagen
docker build -f Dockerfile.sql -t sql:v0.1 .

# construye el contenedor
docker run --name sql -p 8080:8080 -d sql:v0.1

