# Resource Locks & Resource Tags
## Locks
### Types
- CanNotDelete 
- ReadOnly
### Where to apply
- Resource Level
- Resource Group level
- Subscription Level

With the read only lock I cannot even stop/start the VM.  
Locks are inherited.  
Resource with Locks can still be moved to other resource group :bangbang:

## Resource Tags

### Where to apply
- Resource Level
- Resource Group level
- Subscription Level
- **NOT** Administrative Units
- **NOT** Management Group
