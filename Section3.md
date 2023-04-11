# Section 3 - Deploy and Manage Azure compute resources
[Azure Web Apps](WebApps.md)
## Availability Set
- fault domains
- update domains
## Azure Bastion
TBD

## VM creation
I cannot create a VM in a region different from the region of the corresponding virtual network. 

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
## Disk Types
<details>

- Standard HDD
- Standard SSD
- Premium SSD
- Ultra Disk

</details>

## Disks Snapshot

## Disk Encryption
* ADE - Azure Disk Encryption.

* ADE uses BitLocker for encryption of Windows VMs, and the dm-crypt feature for Linux VMs.

* SSE with PMK - Server Side Encryption with Platform Manager Key.

 * Customer Keys for encrption with Azure Key Vault

 ### Encryption at REST
 _Encryption at rest is designed to prevent the attacker from accessing the unencrypted data by ensuring the data is encrypted when on disk. If an attacker obtains a hard drive with encrypted data but not the encryption keys, the attacker must defeat the encryption to read the data._

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
## VM Boot Diagnostics
//TBD
## VM Run Command
//TBD


## VM Availability Zones - 49
Availability Zones are unique physical locations within an Azure region. Zone-redundant services replicate your applications and data across Availability Zones to protect from single-points-of-failure. With Availability Zones, Azure offers industry best **99.99%** VM uptime SLA.

There aint't additional cost to add avaiability zones but there is bandwidth cost.

## VM Scale Set - 52
Orchestration mode:
- Uniform
- Flexible
- IP can be public or not
### Scale Condition
- scale in: reduce instances
- scale out: increase instances

- Conditions: CPU, Memory, Data Disk target IOPS etc
- Duration in minutes: This is amount of time that Autoscale engine will look back for metrics. 

Lab: Ubuntu/stress tool:
```sh
$ sudo stress --cpu 1000
```

cool down time(time to setup properly): during that time no scaling conditions will be applied.


### Scale Up vs Scale Out
**Scaling up** is adding further resources, like hard drives and memory, to increase the computing capacity of physical servers. 

**Scaling out** is adding more servers to your architecture to spread the workload across more machines.

### DSC - Desired State Configuration extension handler
[Azure Desired State Configuration](https://learn.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-overview)

It's about deployment of the application on the new instances created by auto scale.
   

One of the main advantages of Flexible orchestration is that it provides orchestration features over standard Azure IaaS VMs, instead of scale set child virtual machines. This means you can use all of the standard VM APIs when managing Flexible orchestration instances, instead of the Virtual Machine Scale Set VM APIs you use with Uniform orchestration.
## Proximity Placement Group
A proximity placement group is a logical grouping used to make sure that Azure compute resources are physically located close to each other. Proximity placement groups are useful for workloads where low latency is a requirement.

Low latency between stand-alone VMs.

- Create a Proximity Placement Group
- Create VM/Advanced/Link to PPG
- If I create a VM in a different region than the PPG I cannot link it to it.


## Other sections
* [Kubernetes](Kubernetes.md)

* [Docker](Docker.md)






