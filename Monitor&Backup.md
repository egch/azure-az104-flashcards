# Monitor & Backup Azure Resources

## Monitor
- Metrics
- Activity Log
- Alerts

### Quick look - 272
- Diagnostic Settings
- Metrics
- Insights
- Alerts:
    - metrics
    - activity log
### Alert - 273
- Alert rule (condition/event)
- Action Gropus (what to do, i.e. email/sms)

## Log Analytics Worksapce
- Kustom Query Language
- can be in another region different from that one of the resource group
- Alert
- Connecting a VM to LAW.
- You can send data from on premise VM to LAW (agent mgmt).
- LAW/Legacy agents management/Windows event logs
- LAW/Logs/Event/ Run KQL

LAW/VM/Connect VM -> installing an agent into the vm.  
I can connect on premise resource also, but I need to install the agent.

### Log Analytics Queries
```sql
Event | search "egchvm"
Event | top 10 by TimeGenerated
Event | where TimeGenerated > ago(50m)
Event |  where TimeGenerated > ago(1d) | summarize count() by Computer,Source

```

## Application Insights
[Azure Application Insights Tutorial | Amazing telemetry service](https://www.youtube.com/watch?v=A0jAeGf2zUQ&t=541s)


## Backup Feature - 284
## Backup Service
You need a Recovery Service vault in the **same location**.
- backup policy
- backup manually
- backup jobs
### Snapshot consistency
- Application consistent
- File-System consistent
- Crash consistent

### Backup Restore
- File Restore
- VM Restore (need a storage account in the same location):
    - new VM
    - replace existing

In case of new VM there won't be any NSG linked to the new VM.

### Deleting Recovery Services vault
#### Deleting Recovery Services vault - 288
<ol>
<li>From Properties of the Recovery Services Vault select: Security Settings.</li>
<li>disable Always-on soft delete</li>
</ol>

#### Deleting backup items
- Service vault
- backup items
- vm
- stop backup
- delete backup data



    
## Azure Recovery Service Agent - MARS
- Instatll the recovery service agent on a target VM.
- Reovery Service Vault and VM does not need to be within the same region.
### Procedure
- Create a Recovery Service Vault
- Properties / Recovery Services Agent - Download
- copy the exe on the target vm (on premises or not)


#### Deleting Recovery Services vault
<ol>
<li>From Properties of the Recovery Services Vault select: Security Settings.</li>
<li>Backup items: delete backup data</li>
<li>Delete Recovery Services vault</li>
</ol>

### Backup Retention
### Mars Agent Installer
### Azure file share backup