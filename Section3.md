# Section 3 - Deploy and Manage Azure compute resources
## Availability Set
- fault domains
- update domains
## Azure Bastion
## App Service Plan
- Shared: custom domain,
- Basic: custom domain,
- Standard: custom domain, Auto-scaling, Virtual Network connectivity
## Docker
[Docker](Docker.md)
## Installing nginx

```shell
$ ssh user@ip
vm-ubuntu$ sudo apt-get update
vm-ubuntu$ sudo apt-get install nginx
```
Add the port 80 as Inbound port rules in the vm.

## Accessing VM with SSH keys
```shell
$ chmod 400 vm-ubuntu-ssh_key.cer
$ ssh -i vm-ubuntu-ssh_key.cer enrico@13.79.186.11

```
## Disks Snapshot
TBD
## Custom Script Extensions
The Custom Script Extension downloads and runs scripts on Azure virtual machines (VMs). This extension is useful for post-deployment configuration, software installation, or any other configuration or management task. You can download scripts from Azure Storage or GitHub, or provide them to the Azure portal at extension runtime.

The Custom Script Extension integrates with Azure Resource Manager templates. You can also run it by using the Azure CLI, PowerShell, the Azure portal, or the Azure Virtual Machines REST API.
### Lab - Custom Script Extenson web server - Windows
1. Create a storage account (required)
2. Create a container
3. Upload the custmom script extension [file](scripts/custom-script-extension/install-web-server.ps1) into the container
4. Create a new vm in the same location of the storage account (required ?) with OS Windows Server 2019. Make sure to have the port 80/443 open.
5. During the creation, advanced tab, click on Extensions/select an extension to install
6. Select Custom Script Extension (Microsoft)
7. Browse the storage account and the file to be loaded.
8. Review / Create
9. If you connect to the public IP of your VM you should see the web server running

### Lab - Custom Script Extenson nginx - Linux
Follow the same steps as described [here](#Lab-Custom-Script-Extenson-web-server-Windows) to deploy this [file](scripts/custom-script-extension/install-nginx.sh) in order to install nginx on a ubuntu vm.

## Azure Kubernetes
- kubelet
- container runtime
### Azure Kubernetes Lab
1. Kubernetes Service (create)
2. create the [deplyment.yml](configuration/kubernetes/deployment.yml) & [service.yml](configuration/kubernetes/service.yml).
3. kubernetes/Workloads - add deplyment.yml](configuration/kubernetes/deployment.yml) and [service.yml](configuration/kubernetes/service.yml).
4. appcluster/Services and Ingresses
5. app-service with ip and running on external ip (load balancer)

## Azure Containier Instances
- enable admin user on container registry
- can connect to either azure registry or docker hub
### Azure Containier Groups








