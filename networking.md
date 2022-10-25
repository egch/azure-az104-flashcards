# Networking
Configure and manage virtual networking
## Load Balancer
### SKU
- Basic Load Balancer:
    - free
    - No SLA
    - Health Probes: TCP, HTTP
    - No support for availability zones


- Standard Load Balancer: 
    - Charge per hur
    - SLA 99,99%
    - Health Probes: TCP, HTTP, HTTPS
    - Support for availability zones

## Network Security Group
You can use an Azure network security group to filter network traffic between Azure resources in an Azure virtual network. A network security group contains security rules that allow or deny inbound network traffic to, or outbound network traffic from, several types of Azure resources. For each rule, you can specify source and destination, port, and protocol.

NSG can be attached to:
- Network interface
- subnet
- VM

## Network Interface
 A network interface enables an Azure Virtual Machine to communicate with internet, Azure, and on-premises resources. A virtual machine created with the Azure portal, has one network interface with default settings. 

### Varie
NAT - Network Address Tranlation

## Virtual Network Peering
- Virtual Network Peering is used to connect two Azure virtual networks together via the backbone network.

- Azure supports connecting two virtual networks located in the same region or networks located across regions.

- Once you enable virtual network peering between two virtual networks, the virtual machines can then communicate via their private IP addresses across the peering connection.

- You can also peer virtual networks that are located across different subscriptions.

- The virtual networks can't have overlapping CIDR blocks.

## DNS

## Quick topics
**Virtual Appliance**: Azure network virtual appliance is used in the Azure application to enhance high availability. It is used as an advanced level of control over traffic flows, such as when building a demilitarized zone (DMZ) in the cloud.




