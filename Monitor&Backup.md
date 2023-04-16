# Monitor & Backup Azure Resources
[Log Analytics Workspace](LogAnalyticsWorkspace.md)

## Monitor
- Metrics
- Activity Log
- Alerts
- Networks:
    - Connectivity
    - Traffic
    - Network health and metrics

### Quick look
- Diagnostic Settings
- Metrics
- Insights
- Alerts:
    - metrics
    - activity log
### Alert
- Alert rule (condition/event)
- Action Groups (what to do, i.e. email/sms)



## Application Insights
Application Insights provides other features including, but not limited to:

- Live Metrics – observe activity from your deployed application in real time with no effect on the host environment
- Availability – also known as “Synthetic Transaction Monitoring”, probe your applications external endpoint(s) to test the overall availability and responsiveness over time
- GitHub or Azure DevOps integration – create GitHub or Azure DevOps work items in context of Application Insights data
- Usage – understand which features are popular with users and how users interact and use your application
- Smart Detection – automatic failure and anomaly detection through proactive telemetry analysis

### Monitor components for Insight
- Connectivity
- Traffic
- Network health & metrics

### References

[Azure Application Insights Tutorial | Amazing telemetry service](https://www.youtube.com/watch?v=A0jAeGf2zUQ&t=541s)


## Backup Service
You need a Recovery Service vault in the **same location**.
- backup policy
- backup manually
- backup jobs
### Snapshot consistency
- Application consistent
- File-System consistent
- Crash consistent

### Backup VMs Sequence :bangbang:
1. Backup Center
2. Recovery Services Vault
3. Backup
4. Create or select existing backup policy
5. Add the selected VMs to be backed up
6. Enable Backup

### Backup Restore
- File Restore
- VM Restore (youneed a storage account in the same location):
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

### Variuos
- File Recovery: select restore point / download the exec


    
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
- MARS: Microsoft Azure Recovery Serviceszx
- Create a resource: Backup and Site Recovery
- Properties
- Recovery Services Agent/Download
### Azure file share backup

## Azure Site Recovery
- Disaster Recovery
- Cache Storage Account

You can use the Azure Site Recovery tool to move the on-premises servers to Azure. :bangbang:
### Azure Site Recovery Lab
- vm / Disaster recovery
- Target region


  
