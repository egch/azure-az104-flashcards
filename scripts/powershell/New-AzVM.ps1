$resourceGroup = "az-104"
$location = "NorthEurope"
$vmName="appvm"
$vmSize="Standard_DS2_v2"
$vmImage = "Win2019Datacenter"
$nsgName="app-nsg"
$vmPublicIP="app-public-ip"
$virtualNetworkName="exam-network"
$subnetName="SubnetA"

## To get the list of the VM size for your region. Would be 
##Get-AzVMSize -Location "North Europe" |  where {($_.NumberOfCores -EQ '2') -and ($_.MemoryInMB -lt '4000')}
 

New-AzVM -ResourceGroupName $resourceGroup -Location $location -Name $vmName -VirtualNetworkName $virtualNetworkName `
-SubnetName $subnetName -Size $vmSize -Image $vmImage -SecurityGroupName $nsgName -PublicIpAddressName $vmPublicIP `
-Credential (Get-Credential) 

