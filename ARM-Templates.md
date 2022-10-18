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
### Resource id
Extract the id of that specific resource.
```json
"id": "[resourceId('Microsoft.Network/virtualNetworks/subnets', 'enrico-vn', 'subnet1')]" 
```
### Resource Group location
```json
"location": "[resourceGroup().location]",
```
### Variables
```json
 "variables": {
        "resourceLocation" : "North Europe"
    },
    "resources": [
        {           
            "name": "storage",
            "type": "Microsoft.Storage/storageAccounts",
            "location":"[variables('resourceLocation')]",

        }
```
## Parameters
If you do not pass at runtime the value, then default value is taken.
```json
   "parameters": {
            "storage-sku": {
                "type": "string",
                "defaultValue":"Standard_LRS",
                "allowedValues": [
                    "Standard_LRS","Standard_GRS","Standard_RAGRS"
                ]
            }
    },
    "resources": [
        {           
          ...

            "sku" :{
                "name": "[parameters('storage-sku')]"
            },
        }
            ]
```
Complete file is [here](scripts/arm/arm-storage-with-parameters.json)

You can either using Azure Portal o pass the parameter with another file:
```powershell
$ PS>  New-AzResourceGroupDeployment -ResourceGroupName az-104 -TemplateFile ./scripts/arm/arm-storage-with-parameters.json -TemplateParameterFile ./scripts/arm/parameter.json
```
### securestring
```json
"parameters": {
        "vmpassowrd":{
            "type": "securestring",
            "metadata": {
                "description": "Please type the password"
            }
        }
    },
```



## Various
- BICEP base templates
- API version
- depends on (another resource)


## Links
[Understand the structure and syntax of ARM template](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/syntax)

[docs](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/overview)