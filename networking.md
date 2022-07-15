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

## Virtual Network Peering
- Virtual Network Peering is used to connect two Azure virtual networks together via the backbone network.

- Azure supports connecting two virtual networks located in the same region or networks located across regions.

- Once you enable virtual network peering between two virtual networks, the virtual machines can then communicate via their private IP addresses across the peering connection.

- You can also peer virtual networks that are located across different subscriptions.

- The virtual networks can't have overlapping CIDR blocks.




