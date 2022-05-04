$resourceGroup = "az-104"
$appName="enricowaps"
$githubURL="https://github.com/egch/enricowaps"

$PropertiesObject = @{
    repoUrl = $githubURL;
    branch = "main";
    isManualIntegration = "true";
}

Set-AzResource -Properties $PropertiesObject -ResourceGroupName $resourceGroup `
-ResourceType Microsoft.Web/sites/sourcecontrols -ResourceName $appname/web -ApiVersion 2015-08-01 -Force