# Monitor & Backup Azure Resources

## Monitor
- Metrics
- Activity Log
- Alerts
## Log Analytics Worksapce
- Kusto Query Language
- can be in another region different from that one of the resource group
- Alert

Connecting a VM to LAW.
You can send data from on premise VM to LAW (agent mgmt)


## Application Insights
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