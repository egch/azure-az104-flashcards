# Log Analytics Worksapce



## Features
- Kustom Query Language
- can be in another region different from that one of the resource group
- Alert
- Connecting a VM to LAW.
- You can send data from on premise VM to LAW (agent mgmt).
- LAW/Legacy agents management/Windows event logs
- LAW/Logs/Event/ Run KQL

LAW/VM/Connect VM -> installing an agent into the vm.  
I can connect on premise resource also, but I need to install the agent.

The region of the LAW can be different than the region of your vm(s.)

## Log Analytics Queries - 285/286
```sql
Event | search "egchvm"
Event | top 10 by TimeGenerated
Event | where TimeGenerated > ago(50m)
Event |  where TimeGenerated > ago(1d) | summarize count() by Computer,Source

```
## Connecting on premise VM to LAWS
- Log Analytics agent 

## Legacy Agent Management
- Windows event logs
    - example: System events
- Windows Performance Counters
    - example: Memory Availble MB
### Tables
- Event
- Perf

## Connect storage accounts to LAW
- storage account
- Diagnostic settings
- link to LAW
- from LAW double check on 'Linked Storage Accounts'S