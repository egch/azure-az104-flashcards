$resourceGroup = "az-104"
$location = "NorthEurope"
$appServicePlanName="app-plan-ps"
$appName="enricowaps"

# First we need to create the App Service Plan

New-AzAppServicePlan -Name $appServicePlanName -ResourceGroupName $resourceGroup -Location $location -Tier Free

# Then we create the Azure Web App
New-AzWebApp -Name $appName -ResourceGroupName $resourceGroup -Location $location -AppServicePlan $appServicePlanName