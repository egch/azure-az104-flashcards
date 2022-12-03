# Manage Azure Identities
[Azure Active Directory](AzureActiveDirectory.md)
## Role Based Acess Control - RBAC
Azure RBAC is an authorization system built on Azure Resource Manager that provides fine-grained access management to Azure resources.
### Built-in role
- Contributor
- Owner
- Reader 
- User Access Administrator

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


## Locks
- Locking resources:
    - read only locks
    - delete locks

Locks cabn be applied to:
- resource level
- resource group level
- subscription level

Locks are inherited. 

### Moving Resource between Resource Groups
_The destination resource group must not have any existing App Service resources. App Service resources include:
Web Apps
App Service plans
Uploaded or imported TLS/SSL certificates
App Service Environments_

### Various

- Resource Tags
- Moving resources across resource groups
- Moving resources across subscriptions
- Azure Policy service
- Management Groups: each management group can have one or more subscriptions 


