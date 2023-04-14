
## Role Based Acess Control - RBAC
Azure RBAC is an authorization system built on Azure Resource Manager that provides fine-grained access management to Azure resources.
## Built-in role
- Contributor
- Owner
- Reader 
- User Access Administrator

## Special Built-in roles
**Security Admin**  
_View and update permissions for Microsoft Defender for Cloud. Same permissions as the Security Reader role and can also update the security policy and dismiss alerts and recommendations._
## Powershell commands
```powershell
$ Get-AzRoleDefinition "Virtual Machine Contributor"
```

### Support Request Contributor
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

## Resources to be granted
- single resource
- resource group
- subscription

## User Administrator Role
Can manage all aspects of users and groups, including resetting passwords for limited admins.

Can add device to groups (TBV)

## User Acess Administrator Role
The User Access Administrator role enables the user to grant other users access to Azure resources. 

## Custom Roles
If the Azure built-in roles don't meet the specific needs of your organization, you can create your own custom roles. Just like built-in roles, you can assign custom roles to users, groups, and service principals at management group (in preview only), subscription, and resource group scopes.

## Built in Roles
### Storage Account
**Storage Blob Data Owner**: Provides full access to Azure Storage blob containers and data, including assigning POSIX access control. :bangbang:

## Various
- User Access Administrator Role
- Custom Role (from RG)

## self-service password reset Administrators
By default, administrator accounts are enabled for self-service password reset, and a strong default two-gate password reset policy is enforced.   
With a two-gate policy, administrators don't have the ability to use security questions.

