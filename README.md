# azure-az104-flashcards
Exam AZ-104: Microsoft Azure Administrator - flashcards
## Badge
<div data-iframe-width="150" data-iframe-height="270" data-share-badge-id="c00e7e1c-9902-46e9-9b33-c4ec3fd456b2" data-share-badge-host="https://www.credly.com"></div><script type="text/javascript" async src="//cdn.credly.com/assets/utilities/embed.js"></script>
## Chapters

[Deploy and Manage Azure compute resources](Section3.md)

[Data Disks](DataDisk.md)

[Docker](Docker.md)

[Kubernetes](Kubernetes.md)

[WebApp](WebApps.md)

[Networking](networking.md)

[Firewall](firewall.md)

[Application Gateway](application-gateway.md)

[DNS](dns.md)

[Storage Accounts](StorageAccounts.md)

[Storage Accounts Backup](StorageAccountsBackup.md)

[Manage Azure Identities](ManageAzureIdentities.md)

[Role Based Access Control - RBAC](RoleBasedAccessControl.md)

[Resource locks](resource-locks.md)

[Azure Active Directory](AzureActiveDirectory.md)

[Monitor & Backup](Monitor&Backup.md)

[Network Watcher](NetworkWatcher.md)

[Log Analytics Worksapce](LogAnalyticsWorkspace.md)

[Powershell](Powershell.md)

[Azure CLI](az-cli.md)

[ARM Templates](ARM-Templates.md)

[Various](Various.md)

[Scripts](scripts)





## Azure VM

### Build a Linux VM
```shell
# connect to the linux vm
[local]$ ssh <vm-user>@2<ip-vm>
$ sudo apt-get update
# install & run nginx web server
$ sudo apt-get install nginx
```
### Connect to VM with SSH keys
When you create the new VM download and save the `private-key.cer` file.
```shell
$ chmod 400 private-key.cer
$ ssh -i private-key.cer enrico_azure@137.135.185.131
```
### Create a new VM with Azure CLI
```shell
$ az vm create --resource-group az104-grp --name demovm --image win2019datacenter --admin-username enrico --location northeurope
```

### Create a new VM with Power Shell
```powershell
$ New-AzVm -ResourceGroupName az104-grp -Name demovm -Location northeurope -Image win2019datacenter
```


## Credits
[Rodrigues AZ-104](https://www.udemy.com/course/microsoft-certified-azure-administrator/)

[Azure documentation](https://learn.microsoft.com/en-us/azure)

## Online
This contents can be seen online [here](https://egch.github.io/azure-az104-flashcards/)
