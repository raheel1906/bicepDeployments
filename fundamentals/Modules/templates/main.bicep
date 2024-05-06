@description('The Azure region into which the resources should be deployed.')
param location string = resourceGroup().location

@description('The name of the App Service app.')
param appServiceAppName string = 'toy-${uniqueString(resourceGroup().id)}'

@description('The name of the App Service App plan SKU.')
param appServicePlanSkuName string = 'F1'

var appServicePlanName = 'toy-product-launch-plan'

module app '../modules/app.bicep' = {
  name: 'toy-launch-app'
  params: {
    appServiceAppName: appServiceAppName
    appServiceAppPlanSkuName: appServicePlanSkuName
    appServicePlanName: appServicePlanName
    location: location
  }
}

@description('The host name to use to access the website')
output websiteHostName string = app.outputs.appServiceAppHostName
