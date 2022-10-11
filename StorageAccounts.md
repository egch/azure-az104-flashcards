# Storage Accounts
### Types
- Blob -> Container
- Table
- QUeuue
- File

#### URL
- sa: egchsa
- container: mystoragecontainer
- file uploaded: draft-arch.jpeg
https://egchsa.blob.core.windows.net/mystoragecontainer/draft-arch.jpeg

### Performance
- Standard
- Premium

### Authentication
- Azure subscribtion
- Access Keys (1 or 2)
- SAS (Shared Access Signature)
    - object level: browser
    - container level: Storage Explorer

#### Access Policy

### Redundancy
- LRS: Locally-redundant Storage
- GRS: Geo-redundant Storage - data replicated to another region.
- ZRS: Zone-redundant Storage - data replicated synchronously across availability zones.
- GZRS - Geo-zone-redundant Storage

#### GRS strategy
Data copied three times in the Primary Rgion using LRS
Data copied three times secondary region using LRS

#### GZRS strategy
Data copied locally through ZRS.


## Access Tiers
- Hot
- Cool
- Archive (Only Blob level)
## Various

- Lifecycle Management
- Object Replication
    - Object Replication Rules

## Azure File shares
- connect local drive
- Azure File Sync Service 

### Storage Premium
- Page Blobs - only LRS/ZRS
- File Shares - only LRS/ZRS
- Page Blobs - only LRS

### Copying Data
- Azure Import/Export Service
- Azure Data Box

#### AzCopy Tool

```shell
$ azcopy make "https://appstore4040.blob.core.windows.net/tmp?sv=2020-08-04&ss=b&srt=sco&sp=rwdlac&se=2021-12-13T14:36:11Z&st=2021-12-13T06:36:11Z&spr=https&sig=RtWuKGVi%2BTp1yW1VNAqgSFMmFtrRrEsQ9f%2BJy7LuIZU%3D"
```