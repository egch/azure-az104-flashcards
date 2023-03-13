# Azure Firewall

## Azure Firewall Creation
- Create a VM without public IP
- in the virtual network create a subnet named **AzureFirewallSubnet**
- Create an Azure Firewall
    - FW manager: Firewall policy
    - linke to the VN/subnet
    - new FW policy
    - new Public IP
## Azure Firewall Configuration
- FW/Overview/Policy
- DNAT rules/Add rule collection
- add rule/source(host/ip) - destination(host/ip)
### Azure Firewall Route Table
- Create Route Table
- Associate it with the subnet (VM subnet)
- Add a route to redirect all the internet trafic to the FW
- 10.0.1.4 it's the private IP of the FW.


<image src="images/route-table.png" width="40%" />   



## Azure Firewall Application rules
FW/Policy/Application Rules
I can allow access to a specific website from my VM protected by the FW




