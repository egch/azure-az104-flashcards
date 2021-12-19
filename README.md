# azure-az104-flashcards
Exam AZ-104: Microsoft Azure Administrator - flashcards
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

