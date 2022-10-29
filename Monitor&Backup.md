# Monitor & Backup Azure Resources

## Monitor
- Metrics
- Activity Log
- Alerts
## Log Analytics Worksapce
- Kustom Query Language
- can be in another region different from that one of the resource group
- Alert
- Connecting a VM to LAW.
- You can send data from on premise VM to LAW (agent mgmt).
- LAW/Legacy agents management/Windows event logs
- LAW/Logs/Event/ Run KQL

### Log Analytics Queries
```sql
Event | search "egchvm"
Event | top 10 by TimeGenerated
Event | where TimeGenerated > ago(50m)
Event |  where TimeGenerated > ago(1d) | summarize count() by Computer,Source

```




## Application Insights
[Azure Application Insights Tutorial | Amazing telemetry service](https://www.youtube.com/watch?v=A0jAeGf2zUQ&t=541s)

## Backup Service
You need a Recovery Service vault in the same location
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
#### Deleting Recovery Services vault
<ol>
<li>From Properties of the Recovery Services Vault select: Security Settings.</li>
<li>Backup items: delete backup data</li>
<li>Delete Recovery Services vault</li>
</ol>

### Backup Retention
### Mars Agent Installer
### Azure file share backup