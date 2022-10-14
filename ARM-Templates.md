# Azure Resource Manager Templates
## Powershell

```powershell
$ pwsh
$ PS> Connect-AzAccount
$ PS> New-AzResourceGroupDeployment -ResourceGroupName arm-grp -TemplateFile scripts/arm/arm-variable.json
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

## Elements
Extract the id of that specific resource.
```json
"id": "[resourceId('Microsoft.Network/virtualNetworks/subnets', 'enrico-vn', 'subnet1')]" 
```


## Various
- BICEP base templates
- API version
- depends on (another resource)


## Links
[Understand the structure and syntax of ARM template](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/syntax)

[docs](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/overview)