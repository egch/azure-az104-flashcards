# Manage Azure Identities
[Azure Active Directory](AzureActiveDirectory.md)

### Moving Resource between Resource Groups
_The destination resource group must not have any existing App Service resources. App Service resources include:
Web Apps
App Service plans
Uploaded or imported TLS/SSL certificates
App Service Environments_

## Azure Policies
### Example
- Require a tag and its value on resources
- Exclusions
- Tag name/value

Policies are inherited 

Can you assign the Azure Policy exclusion at the Tenant Root Group Level? **NO** :bangbang:

### Policy assigment
| Level  |      Policy   | 
|----------|:-------------:|
| Tenant |  :x: | 
| Mgmt group|    :white_check_mark:   |  
| Subscription|    :white_check_mark:  |  
| Resource Group|    :white_check_mark:   |  
| Resource|    :x:   |  


### Not allowed resource types 
Not allowed resource types (Deny): Prevents a list of resource types from being deployed. - so these resources cannot be modified. :bangbang:
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

## Management Groups
Management groups are containers that help you manage access, policy, and compliance across multiple subscriptions. Create these containers to build an effective and efficient hierarchy that can be used with Azure Policy and Azure Role Based Access Controls.

<figure>
  <img src="images/scope-levels.png" width="70%" /> 
  <figcaption>Management Groups</figcaption>
</figure>

**Tags cannot be applied to Mgmt group!**

## Failed questions
- Tools used to create administrative units:
   1. Azure AD Portal
   2. PowerShell
   3. Microsoft Graph

---

[Home](README.md)