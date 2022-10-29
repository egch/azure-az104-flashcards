# Docker & Azure Container Registry
## Setup
```sh
$ sudo apt-get update
$ sudo apt-get install docker-ce docker-ce-cli containerd.io
$ docker --version
```
## Publishing to the Azure Container Registry
### Dockerfile
```Dockerfile
FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
```
### Commands
To be executed from the folder [docker-example](docker-example)
```sh
$ sudo az acr login --name appregistryegch
$ sudo docker build -t my-nginx docker-example
$ sudo docker tag myapp appregistryegch.azurecr.io/my-nginx
$ sudo docker push appregistryegch.azurecr.io/my-nginx
```
## Pulling images from the Azure Container Registry
```sh
$ sudo az login
$ sudo az acr login --name appregistryegch
$ sudo docker run --name mynginx -p 80:80 -d appregistryegch.azurecr.io/my-nginx
```

### Credits
[Running the NGINX Server in a Docker Container](https://www.baeldung.com/linux/nginx-docker-container)
