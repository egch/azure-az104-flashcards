$resourceGroup = "az-104"
$network = "exam-network"
$subnetName="subnetA"
$networkInterfaceName = "app-interface"
$location = "NorthEurope"

$virtualNetwork = Get-AzVirtualNetwork -name $network -ResourceGroupName $resourceGroup
$subnet = Get-AzVirtualNetworkSubnetConfig -VirtualNetwork $virtualNetwork -Name $subnetName


New-AzNetworkInterface -Name $networkInterfaceName -ResourceGroupName $resourceGroup -Location $location -SubnetId $subnet.Id -IpConfigurationName "appIpConfig"