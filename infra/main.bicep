param appName string = 'chatappnextjs'
param location string = resourceGroup().location

resource appServicePlan 'Microsoft.Web/serverfarms@2021-01-01' = {
  name: appName
  location: location
  sku: {
    name: 'F1' // Free tier
    tier: 'Free'
    size: 'F1'
    family: 'F'
    capacity: 1
  }
}

resource webApp 'Microsoft.Web/sites@2021-01-01' = {
  name: appName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      appSettings: [
        {
          name: 'WEBSITE_NODE_DEFAULT_VERSION'
          value: '20.12.2'
        }
      ]
    }
  }
}
