# Storage Accounts Bakup


## Backup
- backup file shares: Recovery Services vault in the same region
- backup Blob: it requires Backup Vault

## Backup Vault - Azure Blob backup
Continuous backups: You can configure operational backup, a managed local data protection solution, to protect your block blobs from accidental deletion or corruption. The data is stored locally within the source storage account and not transferred to the **backup vault**. You don’t need to define any schedule for backups. All changes are retained, and you can restore them from the state at a selected point in time.

Periodic backups (preview): You can configure vaulted backup, a managed offsite data protection solution, to get protection against any accidental or malicious deletion of blobs or storage account. The backup data using vaulted backups is copied and stored in the **Backup vault** as per the schedule and frequency you define via the backup policy and retained as per the retention configured in the policy.

### Steps
- storage account
- data protection
- enable operational backup with azure backup

## Backup Vault vs Recovery Service Vault (from chatgpt)
In Azure, both the Recovery Services vault and Backup vault are used to store backups of your data, but they serve different purposes:

Backup Vault: A Backup vault is used to store and manage backups of Azure resources such as virtual machines, SQL databases, and file shares. You can use it to schedule backups, retain backups for a certain period, and perform backup-related tasks like restoring data to the same or a different location.

Recovery Services Vault: A Recovery Services vault is used to protect and manage backups of both Azure resources and on-premises resources. It offers more advanced capabilities than a Backup vault, including support for disaster recovery scenarios, application consistency backups, and integration with Azure Site Recovery. It is typically used for business continuity and disaster recovery purposes, and it can help you to quickly recover your data and applications in case of an outage or disaster.

In summary, while both vaults are used for backup purposes, the Backup vault is more focused on backing up Azure resources while the Recovery Services vault provides more advanced backup and recovery capabilities for both Azure and on-premises resources.