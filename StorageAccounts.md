# Storage Accounts
## Types
![Types](images/storage-account.png)

## Services
- Blob -> Container
- Table
- Queue
- File

## URL
- sa: egchsa
- container: mystoragecontainer
- file uploaded: draft-arch.jpeg
https://egchsa.blob.core.windows.net/mystoragecontainer/draft-arch.jpeg

## Performance
- Standard
- Premium

## Authentication
- Azure subscribtion
- Access Keys (1 or 2)
- SAS (Shared Access Signature)
    - object level: browser
    - container level: Storage Explorer


## Redundancy
- **LRS**: Locally-redundant Storage - three copies are made of your data within same data center
- **GRS**: Geo-redundant Storage - data replicated to another region.
- **RA-GRS**: Read Access Geo-redundant Storage - data replicated to another region. Read data in case one region is not available
- **ZRS**: Zone-redundant Storage - data replicated synchronously across availability zones.
- **GZRS** : Geo-zone-redundant Storage

### GRS strategy
Data copied three times in the Primary Rgion using LRS
Data copied three times secondary region using LRS

### GZRS strategy
Data copied locally through ZRS.


## Access Tiers
- Hot
- Cool
- Archive (Only Blob level)


## Azure File shares
- connect local drive
- Azure File Sync Service 

### Azure Files Sync 
### File Shares URL
https://egchsa.file.core.windows.net/container/fileName

## Storage Premium
- Page Blobs - only LRS/ZRS
- File Shares - only LRS/ZRS
- Page Blobs - only LRS

## Copying Data
- Azure Import/Export Service
- Azure Data Box

## Azure Storage Explorer
I cannot create a new storage account via the use of Azure Storage Explorer.

### Connection Types
- subscription
- Access Keys (2 rotable ak)
- Shared Access Signatures

## AzCopy Tool

```shell
$ azcopy make "https://appstore4040.blob.core.windows.net/tmp?sv=2020-08-04&ss=b&srt=sco&sp=rwdlac&se=2021-12-13T14:36:11Z&st=2021-12-13T06:36:11Z&spr=https&sig=RtWuKGVi%2BTp1yW1VNAqgSFMmFtrRrEsQ9f%2BJy7LuIZU%3D"

```

## Lifecycle Management
- Storage account
- Lifecycle management
- create a rule: (example)
- move all the new created blob after one day from hot to archive tier
- select to all the blobs or filter.

_Lifecycle management policies are supported for block blobs and append blobs in general-purpose v2, premium block blob, and Blob Storage accounts. Lifecycle management doesn't affect system containers such as the $logs or $web containers._

## Various

- Lifecycle Management
- Object Replication
    - Object Replication Rules
