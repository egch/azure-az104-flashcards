# Manage Azure Identities
## Role Based Acess Control - RBAC
Azure RBAC is an authorization system built on Azure Resource Manager that provides fine-grained access management to Azure resources.
### Built-in role
- Contributor
- Owner
- Reader 
- User Access Administrator

### Resource Level
- create a VM with the main user 
- go to a VM or any other resource.
- from the VM assign IAM role reader to another user, userA
- connect as userA, it can see the VM but only as a reader, i.e. it cannot start it
### Resource Group Level
- same procedure as above but from the resource group.
- Resource Visualizer

### Subscription Level
- To all the subscription
### Various
- User Access Administrator Role
- Custom Role (from RG)

## Azure Active Directory
- Free
- Premium P1
- Premium P2
### AD Groups
- Security Group
- Dynamic Group (only with P2)
### AD Roles
- Azure AD roles control access to Azure AD resources such as users, groups, and applications using the Microsoft Graph API
- Azure roles control access to Azure resources such as virtual machines or storage using Azure Resource Management


### AD Custom Domains
TBD
### AAD Devices
* AAD - devices (only windows machine)
* VM: login with AAD

#### Windows Device
When you connect a Windows device with Azure AD using an Azure AD join, Azure AD adds the following security principals to the local administrators group on the device:

* The Azure AD Global Administrator role
* The Azure AD joined device local administrator role
* The user performing the Azure AD join
### Password Reset
Only with AD P1 or P2
### Users
- Invite Guest Users
- create bulk users
- Multi Factor Authentication
### Administrative Units
Administrative units restrict permissions in a role to any portion of your organization that you define. You could, for example, use administrative units to delegate the Helpdesk Administrator role to regional support specialists, so they can manage users only in the region that they support.

*You can create a new administrative unit by using either the Azure portal, PowerShell or Microsoft Graph.*


## Locks
- Locking resources:
    - read only locks
    - delete locks

### Moving Resource betwwee Resource Groups
_The destination resource group must not have any existing App Service resources. App Service resources include:
Web Apps
App Service plans
Uploaded or imported TLS/SSL certificates
App Service Environments_

### Various
- Conditional Access Policies - only with AAD P2

- Resource Tags
- Moving resources across resource groups
- Moving resources across subscriptions
- Azure Policy service
- Management Groups: each management group can have one or more subscriptions 


