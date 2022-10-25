# azure-az104-flashcards
Exam AZ-104: Microsoft Azure Administrator - flashcards
## Chapters
[Manage Azure Identities](ManageAzureIdentities.md)

[Storage Accounts](StorageAccounts.md)

[Networking](networking.md)

[Docker](Docker.md)

[Monitor & Backup](Monitor&Backup.md)

[Azure CLI](az-cli.md)

[Powershell](Powershell.md)

[ARM Templates](ARM-Templates.md)

[Resource locks](resource-locks.md)

[Deploy and Manage Azure compute resources](Section3.md)

## Azure VM

### Build a Linux VM
```bash
# connect to the linux vm
[local]$ ssh <vm-user>@2<ip-vm>
$ sudo apt-get update
# install & run nginx web server
$ sudo apt-get install nginx
```
### Connect to VM with SSH keys
When you create the new VM download and save the `private-key.cer` file.
```bash
$ chmod 400 private-key.cer
$ ssh -i private-key.cer enrico_azure@137.135.185.131
```
### Create a new VM with Azure CLI
```bash
$ az vm create --resource-group az104-grp --name demovm --image win2019datacenter --admin-username enrico --location northeurope
```

### Create a new VM with Power Shell
```powershell
$ New-AzVm -ResourceGroupName az104-grp -Name demovm -Location northeurope -Image win2019datacenter
```

### Adding Data Disks to VM VM with Power Shell
```powershell
$resourcegroup = 'az-104'
$machinename = 'enrico-win-vm'
$location = 'North Europe'
$storageType = 'Standard_LRS'
$dataDiskName = 'newdisk01'
$dataDiskSize = 10
 
$datadiskConfig = New-AzDiskConfig -SkuName $storageType -Location $location -CreateOption Empty -DiskSizeGB $dataDiskSize
 
$dataDisk01 = New-AzDisk -DiskName $dataDiskName -Disk $datadiskConfig -ResourceGroupName $resourcegroup
 
$vm = Get-AzVM -Name $machinename -ResourceGroupName $resourcegroup
 
$vm = Add-AzVMDataDisk -VM $vm -Name $dataDiskName -CreateOption Attach -ManagedDiskId $dataDisk01.Id -Lun 1
 
Update-AzVM -VM $vm -ResourceGroupName $resourcegroup
```

## Credits
[Rodrigues AZ-104](https://www.udemy.com/course/microsoft-certified-azure-administrator/)

[Azure documentation](https://learn.microsoft.com/en-us/azure)

## Online
This contents can be seen online [here](https://egch.github.io/azure-az104-flashcards/)