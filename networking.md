# Networking
Configure and manage virtual networking

## CIDR Notation
```
10.0.0.0/24
10.0.0.0/16
```
- 192.0.2.0 -> reserved for network id
- 192.0.2.255 -> reserved for broadcast id

| IP   |      Subnet Mask    |  CCIDR |
|----------|:-------------:|------:|
| 192.0.2.0 |  255.255.255.0 | 192.0.2.0/24 |
| 192.0.2.0 |    255.255.0.0   |   192.0.2.0/16 |



## Public IP address 
- Static IP
- Dynamic IP
### SKU
- Standard (static IP)
- Basic

Basic SKU: If you are creating a public IP address in a region that supports availability zones, the Availability zone setting is set to None by default. Basic Public IPs do not support Availability zones.
Standard SKU: A Standard SKU public IP can be associated to a virtual machine or a load balancer front end.

## Network Interface
 A network interface enables an Azure Virtual Machine to communicate with internet, Azure, and on-premises resources. A virtual machine created with the Azure portal, has one network interface with default settings. 

- A VM must have at least one network interface attached to it.
- Region of the NI should be the same as the VM.
- A VM can only have as many network interfaces attached to it as the VM size supports.
- NI can be applied to VM or subnet (verify)


*You can only assign a network interface to a virtual network that exists in the same subscription and location as the network interface.*

## Network Security Group - NSG
You can use an Azure network security group to filter network traffic between Azure resources in an Azure virtual network. A network security group contains security rules that allow or deny inbound network traffic to, or outbound network traffic from, several types of Azure resources. For each rule, you can specify source and destination, port, and protocol.

- Inbound rules
- Outbound rules

NSG can be attached to:

|  Resource | Can be attached | 
|:----------|-------------:|
|  Network interface  | :white_check_mark: |
|  Subnet  | :white_check_mark: |
|  VM  | :white_check_mark: |
|  Virtual Network  |  :x: |

You can create a VM without NSG associated but it's risky.


## Load Balancer
### SKU
- Basic Load Balancer:
    - free
    - No SLA
    - Health Probes: TCP, HTTP
    - No support for availability zones
    - Backend pool - only if part of availability set


- Standard Load Balancer: 
    - Charge per hur
    - SLA 99,99%
    - Health Probes: TCP, HTTP, HTTPS
    - Support for availability zones
    - if public IP only those with standard SKU can be added


### Varius
NAT - Network Address Tranlation

## Virtual Network Peering
- Virtual Network Peering is used to connect two Azure virtual networks together via the backbone network.

- Azure supports connecting two virtual networks located in the same region or networks located across regions.

- Once you enable virtual network peering between two virtual networks, the virtual machines can then communicate via their private IP addresses across the peering connection.

- You can also peer virtual networks that are located across different subscriptions.

- The virtual networks can't have overlapping CIDR blocks.

## Application Gateway

### Features
- OSI Layer 7 
- Web application Firewall feature
- SSL/TLS
- Autoscaling
- Session affinity
### Components
- Frontend IP address
- Listener:
    - Basic
    - Multi site
- Routing Roules
    - Basic
    - Path-based
- Backeend pools
- Health Probes

### What is Azure Application Gateway?
Azure Application Gateway is a web traffic load balancer that enables you to manage traffic to your web applications. Traditional load balancers operate at the transport layer (OSI layer 4 - TCP and UDP) and route traffic based on source IP address and port, to a destination IP address and port.

Application Gateway can make routing decisions based on additional attributes of an HTTP request, for example URI path or host headers. For example, you can route traffic based on the incoming URL. So if /images is in the incoming URL, you can route traffic to a specific set of servers (known as a pool) configured for images. If /video is in the URL, that traffic is routed to another pool that's optimized for videos.

### Application Gateway - WAF
Azure Web Application Firewall (WAF) on Azure Application Gateway provides centralized protection of your web applications from common exploits and vulnerabilities. Web applications are increasingly targeted by malicious attacks that exploit commonly known vulnerabilities. SQL injection and cross-site scripting are among the most common attacks.

## Point-to-Site VPN Connection
A Point-to-Site (P2S) VPN gateway connection lets you create a secure connection to your virtual network from an individual client computer. A P2S connection is established by starting it from the client computer.

Secure connection between the on premises pc and the VM on its private IP.

### Gateway subnet
On the VN I have to install a Gateway SUbnet.
The gateway subnet is part of the virtual network IP address range that you specify when configuring your virtual network. It contains the IP addresses that the virtual network gateway resources and services use.

When you create the gateway subnet, you specify the number of IP addresses that the subnet contains. The number of IP addresses needed depends on the VPN gateway configuration that you want to create. Some configurations require more IP addresses than others. We recommend that you create a gateway subnet that uses a /27 or /28 (or /29.)


## Site-to-Site VPN Connection
Azure VPN gateways provide cross-premises connectivity between customer premises and Azure.

Site-to-site VPN gateway connection from your on-premises network to the VNet.

## Network Watcher
- **Connection Monitor**: check network connectivity between machines
- **Next hop**: next route for a packet of data
- **IP Flow Verify**: check if traffic is allowed to/from a VM
- **Connection troublehsoot**: 
- **NSG Diagnostic**
- **Traffic Analyitics**
- **NSG Flow Logs**
- **Network Watcher variable packet capture**

### Connection troublehsoot
- VM / connection troubleshoot
- Azure Network watcher extension
### Connection Monitor
- Network Watcher/Connection Monitor
- Data is stored into Log Analytics Workspace
- Source/Destination/Test Configuration
### IP Flow verify
Check if traffic is allowed to/from a VM
- Network Watcher/IP Flow verify
- Target vm port 80
- remote ip address: my IP (217.162.243.60)
### Next Hop
- Network Watcher/Next Hop
- from Azure VM to my IP
- Next hop type: Internet

---
- from vm1 (private IP) to vm2 (private IP)
- Next hop type: VirtualNetwork

### NSG Diagnostic
The Network Security Group (NSG) Diagnostics tool provides detailed information to understand and debug the security configuration of your network. 

 Network Watcher/NSG Diagnostic
### NSG Flow Logs
- Network Watcher/NSG Flow Logs
- NSG
- Requires storage account & Log Analytic Workspace
- in the folder of storage account you will find the log file, i.e. PT1H.json
- Log format in the MS documentation
- Network Watcher | Traffic Analytics

## DNS - Domain Name System
**Context**: Azure public DNS zone named enricogiurin.com. They also have the domain name registered as part of an external domain registrar. They want to ensure that records from the Internet get routed to their Azure DNS zone.

**Solution**: Modify the **NS** record in the external domain system (www.enricogiurin.com)

### Azure Private DNS
Private DNS zone

_Azure Private DNS provides a reliable and secure DNS service for your virtual network. Azure Private DNS manages and resolves domain names in the virtual network without the need to configure a custom DNS solution. By using private DNS zones, you can use your own custom domain name instead of the Azure-provided names during deployment._


### Azure Public DNS

## Quick topics
**Virtual Appliance**: Azure network virtual appliance is used in the Azure application to enhance high availability. It is used as an advanced level of control over traffic flows, such as when building a demilitarized zone (DMZ) in the cloud.

[Best practices to consider before deploying a network virtual appliance](https://azure.microsoft.com/en-us/blog/best-practices-to-consider-before-deploying-a-network-virtual-appliance/)




