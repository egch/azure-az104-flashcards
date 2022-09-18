# Manage Azure Identities
## Role Based Assignment
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