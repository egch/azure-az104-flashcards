$resourceGroup = "az-104"
$location = "NorthEurope"
$storageAccountName="enricops"

New-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName -Location $location `
-SkuName Standard_GRS -Kind StorageV2