$resourceGroup = "az-104"
$location = "NorthEurope"
$publicIPAddressName = "enrico-ip"

New-AzPublicIpAddress -Name $publicIPAddressName -ResourceGroupName $resourceGroup -Location $location  -AllocationMethod Dynamic