# Azure Kubernetes
- kubelet
- container runtime
## Architecture
![Architecture](images/azure-kubernetes.png)

### Azure Kubernetes Lab
1. Kubernetes Service (create)
2. create the [deplyment.yml](configuration/kubernetes/deployment.yml) & [service.yml](configuration/kubernetes/service.yml).
3. kubernetes/Workloads - add deplyment.yml](configuration/kubernetes/deployment.yml) and [service.yml](configuration/kubernetes/service.yml).
4. appcluster/Services and Ingresses
5. app-service with ip and running on external ip (load balancer)

## Azure Containier Instances
- enable admin user on container registry
- can connect to either azure registry or docker hub

### Azure CNI - Container Networking Interface
Azure CNI (Container Networking Interface) is a networking plugin for Kubernetes clusters running on Microsoft Azure that enables container networking. CNI provides a standardized way for network providers to integrate with container runtimes, allowing containers to communicate with each other and with the outside world. :bangbang:
### Azure Containier Groups

### Attach files to POD
- Azure Premium disks (single pod)
- Azure Files (multiple pods)


## Calico
Calico enables Kubernetes workloads and non-Kubernetes or legacy workloads to communicate seamlessly and securely. Kubernetes pods are first class citizens on your network and able to communicate with any other workload on your network. 

## Mount file share as an inline volume
__azure-files-pod.yaml__

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: mypod
spec:
  nodeSelector:
    kubernetes.io/os: linux
  containers:
  - image: mcr.microsoft.com/oss/nginx/nginx:1.15.5-alpine
    name: mypod
    resources:
      requests:
        cpu: 100m
        memory: 128Mi
      limits:
        cpu: 250m
        memory: 256Mi
    volumeMounts:
      - name: azure
        mountPath: /mnt/azure
  volumes:
  - name: azure
    csi:
      driver: file.csi.azure.com
      readOnly: false
      volumeAttributes:
        secretName: azure-secret  # required
        shareName: aksshare  # required
        mountOptions: "dir_mode=0777,file_mode=0777,cache=strict,actimeo=30,nosharesock"  #optional

```

```shell
$ kubectl apply -f azure-files-pod.yaml
```
[Source](https://learn.microsoft.com/en-us/azure/aks/azure-files-volume)






