# Azure Resource Manager Templates
## Powershell

```powershell
$ pwsh
$ PS > Connect-AzAccount
$ New-AzResourceGroupDeployment -ResourceGroupName arm-grp -TemplateFile scripts/arm/arm-variable.json
```
## Template format
```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "",
  "apiProfile": "",
  "parameters": {  },
  "variables": {  },
  "functions": [  ],
  "resources": [  ],
  "outputs": {  }
}

```

## Deployment via Azure Portal
- search for 'Template deployment'
- click on 'Deploy from a custom template'
- create
- build with the editor
- save

## Scripts
Other scripts can be found [here](scripts/arm).

## Various
BICEP base templates

## Links
[Understand the structure and syntax of ARM template](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/syntax)

[docs](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/overview)