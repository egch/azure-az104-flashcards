# Manage Azure Identities
## Role Based Assignment - RBAC
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
### Password Reset
Only with AD P1 or P2
### Users
- Invite Guest Users
- create bulk users
- Multi Factor Authentication
### Various
- Conditional Access Policies - only with AAD P2
- Administrative Units
- Resource Tags
- Moving resources across resource groups
- Moving resources across subscriptions
- Locking resources:
    - read only locks
    - delete locks
- Azure Policy service
- Management Groups


