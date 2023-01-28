$resourceGroup = "az-104"
$location = "NorthEurope"
$dataDiskName="app-disk"
$vmName="appvm"

# First we need to create a disk configuration
$#dataDiskConfig = New-AzDiskConfig -Location $location -CreateOption Empty -DiskSizeGB 32 -SkuName "Standard_LRS"
$dataDiskConfig = New-AzDiskConfig -Location $location -DiskSizeGB 5 -SkuName Standard_LRS -OsType Windows -CreateOption Empty 

# Next we create the data disk
$dataDisk= New-AzDisk -ResourceGroupName $resourceGroup -DiskName $dataDiskName -Disk $dataDiskConfig

# We need to get a reference to the VM to attach the disk to
$vm=Get-AzVM -ResourceGroupName $resourceGroup -Name $vmName

# Then we attach the disk to the VM
$vm=Add-AzVMDataDisk -VM $vm -Name $dataDiskName -CreateOption Attach -ManagedDiskId $dataDisk.Id -Lun 0

# Then we need to update the VM
Update-AzVM -ResourceGroupName $resourceGroup -VM $vm
