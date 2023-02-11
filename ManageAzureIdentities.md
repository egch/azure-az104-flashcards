# Manage Azure Identities
[Azure Active Directory](AzureActiveDirectory.md)
## Role Based Acess Control - RBAC
Azure RBAC is an authorization system built on Azure Resource Manager that provides fine-grained access management to Azure resources.
### Built-in role
- Contributor
- Owner
- Reader 
- User Access Administrator
### Powershell commands
```powershell
$ Get-AzRoleDefinition "Virtual Machine Contributor"
```

#### Support Request Contributor
Lets you create and manage Support requests
```json
{
  "assignableScopes": [
    "/"
  ],
  "description": "Lets you create and manage Support requests",
  "id": "/subscriptions/{subscriptionId}/providers/Microsoft.Authorization/roleDefinitions/cfd33db0-3dd1-45e3-aa9d-cdbdf3b6f24e",
  "name": "cfd33db0-3dd1-45e3-aa9d-cdbdf3b6f24e",
  "permissions": [
    {
      "actions": [
        "Microsoft.Authorization/*/read",
        "Microsoft.Resources/subscriptions/resourceGroups/read",
        "Microsoft.Support/*"
      ],
      "notActions": [],
      "dataActions": [],
      "notDataActions": []
    }
  ],
  "roleName": "Support Request Contributor",
  "roleType": "BuiltInRole",
  "type": "Microsoft.Authorization/roleDefinitions"
}
```

### Resources to be granted
- single resource
- resource group
- subscription

### User Acess Administrator Role
The User Access Administrator role enables the user to grant other users access to Azure resources. 

### Custom Roles
If the Azure built-in roles don't meet the specific needs of your organization, you can create your own custom roles. Just like built-in roles, you can assign custom roles to users, groups, and service principals at management group (in preview only), subscription, and resource group scopes.

### Various
- User Access Administrator Role
- Custom Role (from RG)


### Moving Resource between Resource Groups
_The destination resource group must not have any existing App Service resources. App Service resources include:
Web Apps
App Service plans
Uploaded or imported TLS/SSL certificates
App Service Environments_

## Azure Policies
### Example
- Require a tag and its value on resources
- Assign/Scope:
  - Management Group
  - subscription
  - resource group
- Exclusions
- Tag name/value
### Remediation
- Create a Managed Identity

If I try to create a new resource this needs to be compliant.
On the existing resources they will be marked as not policiy compliant.

## Administrative Units
- MS Graph

## Various

- Resource Tags
- Moving resources across resource groups
- Moving resources across subscriptions
- Azure Policy service
- Management Groups: each management group can have one or more subscriptions 


