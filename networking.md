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
- Region of the NI should be the same as the VM (verify)
- A VM can only have as many network interfaces attached to it as the VM size supports.
- NI can be applied to VM or subnet (verify)

## Network Security Group - NSG
You can use an Azure network security group to filter network traffic between Azure resources in an Azure virtual network. A network security group contains security rules that allow or deny inbound network traffic to, or outbound network traffic from, several types of Azure resources. For each rule, you can specify source and destination, port, and protocol.

- Inbound rules
- Outbound rules

NSG can be attached to:
- Network interface - :white_check_mark:
- subnet - :white_check_mark:
- VM - :white_check_mark:
- NO to all the virtual network -  :x:





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





### Varius
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




