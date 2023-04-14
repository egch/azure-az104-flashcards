# Network Watcher
- **Connection Monitor**: check network connectivity between machines
- **Next hop**: next route for a packet of data
- **IP Flow Verify**: check if traffic is allowed to/from a VM
- **Connection troublehsoot**: 
- **NSG Diagnostic**
- **Traffic Analyitics**
- **NSG Flow Logs**
- **Network Watcher variable packet capture**

## Connection troubleshoot
Network Watcher connection troubleshoot provides the capability to check a direct TCP or ICMP connection from a virtual machine (VM), application gateway, or Bastion host to a VM, fully qualified domain name (FQDN), URI, or IP address.


## Connection Monitor

Connection Monitor monitors communication at regular intervals. It informs you of changes in reachability and latency. You can also check the current and historical network topology between source agents and destination endpoints.

Sources can be Azure VMs/ scale sets or on-premises machines that have an installed monitoring agent. :bangbang:

- Specific for a given region
- check connectivity between 2 VMs
- Network Watcher/Connection Monitor
- Data is stored into Log Analytics Workspace
- Test grp/Source/Destination/Test Configuration
- VM needs to install network watcher agent:
    - linux: _Network Watcher Agent for Linux_ 
    - windows: _Network Watcher Agent for Windows_ 


## IP Flow verify
Check if traffic is allowed to/from a (single) VM
- Network Watcher/IP Flow verify
- Target vm port 80
- remote ip address: my IP (217.162.243.60)

## Next Hop
Next hop is a routing term that refers to the next closest router a packet can go through.
- Network Watcher/Next Hop
- from Azure VM to my IP
- Next hop type: Internet

<image src="images/next-hop.png" width="40%" />   

### Next Hop VirtualNetwork
- from vm1 (private IP) to vm2 (private IP)
- Next hop type: VirtualNetwork

## NSG Diagnostic - 176
The Network Security Group (NSG) Diagnostics tool provides detailed information to understand and debug the security configuration of your network.  
Network Watcher / NSG diagnostic

Network Watcher/NSG Diagnostic
## NSG Flow Logs - 181
- Network Watcher/NSG Flow Logs
- NSG
- **Requires storage account & Log Analytic Workspace**
- in the folder of storage account you will find the log file, i.e. PT1H.json
- Log format in the MS documentation
- Network Watcher | Traffic Analytics
- Ensure to register to Microsoft.Insights resource provider

### Microsoft.Insights
Microsoft.Insights is the resource provider namespace for Azure Monitor which provides features such as metrics, diagnostic logs, activity logs, autoscale, and metric alerts. 







