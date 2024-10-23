

docker build -f Dockerfile -t webapi:v0.1 .
docker run --name webapi -p 8080:8080 -d webapi:v0.1