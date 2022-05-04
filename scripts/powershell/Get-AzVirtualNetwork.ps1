$resourceGroup = "az-104"
$network="exam-network"

$virtualNetwork=Get-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup

Write-Host $virtualNetwork.Location

Write-Host $virtualNetwork.AddressSpace.AddressPrefixes