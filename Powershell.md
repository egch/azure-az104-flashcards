# Powershell
## Basic commands
```powershell
$ pwsh
$ PS> Connect-AzAccount
```

### Browsing commands
```powershell
$ PS> Get-Command -Verb Get -Noun AzVM* 
```
### Type of commands
- New-Az*** : create a new resource
- Add-Az*** : add a new resource on an existing resource, i.e. Add-AzVirtualNetworkSubnetConfig
- Get-Az*** : get info of that specific resource
- Remove-Az*** : delete a specific resource
### Set-AzResource
To Modify a resource
## Resource Groups
```powershell
$ PS> New-AzResourceGroup -Name RG01 -Location "South Central US"
```
## Poweshell on Visual Studio Code
Install the extensions:
- Powershell
- Azure Powershell tools

## Scripts
Other Powershell scripts can he found [here](scripts/powershell)

