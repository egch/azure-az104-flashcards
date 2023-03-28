# Docker & Azure Container
## Setup
```shell
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
```shell
$ az acr login --name egchregistry --username egchregistry --password xyz
$ sudo docker build -t my-nginx docker-example
$ sudo docker tag myapp appregistryegch.azurecr.io/my-nginx
$ sudo docker push appregistryegch.azurecr.io/my-nginx
```
## Pulling images from the Azure Container Registry
```shell
$ sudo az login
$ sudo az acr login --name appregistryegch
$ sudo docker run --name mynginx -p 80:80 -d appregistryegch.azurecr.io/my-nginx
```


## Container Instances
Azure Container Instance (ACI) is a service that offers the fastest and most straightforward way to run containers directly on the Microsoft Azure cloud, without having to provision any virtual machines and without the need for a higher-level service.

## Container Groups
A container group is a collection of containers that get scheduled on the same host machine.

The containers in a container group share a lifecycle, resources, local network, and storage volumes.

Multi-container groups are currently restricted to Linux containers.

_Init containers run to completion before the application container or containers start. Similar to Kubernetes init containers, use one or more init containers to perform initialization logic for your app containers, such as setting accounts, running setup scripts, or configuring databases._

### Credits
[Running the NGINX Server in a Docker Container](https://www.baeldung.com/linux/nginx-docker-container)
