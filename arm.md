# ARM template
Azure Resource Manager Template
## Basic commands
```powershell
$ Connect-AzAccount
```
## Create Storage Account
```powershell
$ New-AzResourceGroupDeployment -ResourceGroupName arm-grp --TemplateFile arm/arm-storage-account.json

```
## ARM copy
see [copy](arm/arm-storage-account_copy.json)
