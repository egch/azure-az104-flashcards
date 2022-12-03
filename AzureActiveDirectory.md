# AAD - Azure Active Directory

## Type/License
- Free
- Premium P1
- Premium P2

## AAD Groups
- Security Group
- Dynamic Group (only with P2)

## AAD Dynamic Group
Dynamic group membership adds and removes group members automatically using membership rules based on member attributes.

## AD Roles
Created exclusevly to carry on tasks in AAD.
- Azure AD roles control access to Azure AD resources such as users, groups, and applications using the Microsoft Graph API
- Azure roles control access to Azure resources such as virtual machines or storage using Azure Resource Management

AAD built in roles.

AAD - Roles and administrators


## AD Custom Domains
Every new Azure AD tenant comes with an initial domain name, <domainname>.onmicrosoft.com. You can't change or delete the initial domain name, but you can add your organization's names. Adding custom domain names helps you to create user names that are familiar to your users, such as alain@contoso.com.

## Devices
* AAD - devices (only windows machine)
* VM: login with AAD

### Windows Device
When you connect a Windows device with Azure AD using an Azure AD join, Azure AD adds the following security principals to the local administrators group on the device:

* The Azure AD Global Administrator role
* The Azure AD joined device local administrator role
* The user performing the Azure AD join

### Dynamic Device Groups
You can create a dynamic device group that contains your Cloud PCs. Policies targeting this device group will target all or some Cloud PCs, depending on the rules you configure.

## Password Reset
Only with AD P1 or P2

## Users
- Invite Guest Users
- create bulk users
- Multi Factor Authentication

## Conditional Access Policies
Only with AAD P2.

Conditional Policy

Example: I want users ONLY with MFA enabled.

## Multi Factor Authentication
AAD / Users / Per-User MFA


## Administrative Units
Administrative units restrict permissions in a role to any portion of your organization that you define. You could, for example, use administrative units to delegate the Helpdesk Administrator role to regional support specialists, so they can manage users only in the region that they support.

*You can create a new administrative unit by using either the Azure portal, PowerShell or Microsoft Graph.*

Resource Tag **cannot** be added at a Management Group Level



