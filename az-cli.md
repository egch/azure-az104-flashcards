# AZ cli
## Basic commands
```shell
$ az login --tenant <tenant>
```
## Groups
```shell
$ az group create --name "cli-grp" --location "North Europe"
$ az group list
```
## Virtual Network
```shell

$ az network vnet create --name cli-network --resource-group cli-grp --subnet-name SubnetA --address-prefixes 10.0.0.0/16
$ az network vnet show -g cli-grp -n cli-network
$ az network vnet list
$ az network vnet subnet create --name SubnetB --address-prefixes 10.0.1.0/24 --resource-group cli-grp --vnet-name cli-network

```
## Virtual Machine
```shell
$ az vm create --resource-group cli-grp --name appvm --image Win2019Datacenter --public-ip-sku Standard --admin-username xxx
$ az vm create --vnet-name myVN  --subnet subnetA --resource-group cli-grp --name appvm --image Win2019Datacenter --public-ip-sku Standard --admin-username xxx
$ az vm list-sizes --location "North Europe"
```

## Storage Accounts
```shell

$ az storage account list
$ az storage account create -n egchsa -g cli-grp -l northeurope --sku Standard_LRS
$ az storage container create -n mystoragecontainer --account-name egchsa


```