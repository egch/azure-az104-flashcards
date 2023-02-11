# Various Topics
## Files sharing
### SMB protocol
Ensure port 445 is open: The SMB protocol requires TCP port 445 to be open; connections will fail if port 445 is blocked. You can check if your firewall is blocking port 445 with the Test-NetConnection cmdlet. To learn about ways to work around a blocked 445 port, see the Cause 1: Port 445 is blocked section of our Windows troubleshooting guide.

### UNC Path
Universal Naming Convention (UNC)
In Windows operating systems, the UNC name format is:

```shell
 \\servername\sharename\path\filename
 ```
 Example with storage account **egch** and a file share named **demo**:

```shell
 \\egch.file.core.windows.net\demo
 ```

 ## Move Resources to a different subcription 
 ```powershell
 $   Move-AzResource -DestinationSubscriptionId "<myDestinationSubscriptionID>" `
    -DestinationResourceGroupName "<myDestinationResourceGroup>" `
    -ResourceId <myResourceId,myResourceId,myResourceId>
 ```
