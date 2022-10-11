$resourceGroup = "az-104"
$network="exam-network"

Remove-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup

