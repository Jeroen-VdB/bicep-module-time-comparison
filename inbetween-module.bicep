targetScope = 'subscription'

param rgName string = 'rg-dvlp-inbetween-modules'
param location string = 'westeurope'
param storageAccountName string = 'stdvlpinbetweenmodules'

resource rg 'Microsoft.Resources/resourceGroups@2020-06-01' = {
  name: rgName
  location: location
}

module storageAccount 'components/module-level4.bicep' = {
  scope: rg
  name: 'moduleLevel4'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
