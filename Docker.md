# Docker
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
```sh
$ sudo az acr login --name appregistryenrico
$ sudo docker build -t myapp .
$ sudo docker tag myapp appregistryenrico.azurecr.io/myapp
$ sudo docker push appregistryenrico.azurecr.io/myapp
```
## Pulling images from the Azure Container Registry
```sh
$ sudo az login
$ sudo az acr login --name appregistryenrico
$ sudo docker run --name mynginx -p 80:80 -d appregistryenrico.azurecr.io/myapp
```
