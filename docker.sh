docker build -t hello-docker .

docker images

docker run hello-docker

docker login

docker tag 6fae60ef3446 starb/webapp:v1.1

docker push starb/webapp:v1.1

docker pull geekhour/hello-docker

docker run geekhour/hello-docker

docker-compose up

docker-compose build

--

docker ps -a

docker pull ubuntu

docker run ubuntu   # direct download if ubuntu not at local

docker run -it ubuntu   # interactive

// clear all cache
docker system prune -a
