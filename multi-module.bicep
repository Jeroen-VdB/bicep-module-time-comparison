targetScope = 'subscription'

param rgName string = 'rg-dvlp-multi-modules'
param location string = 'westeurope'
param storageAccountName string = 'stdvlpmultimodules'

resource rg 'Microsoft.Resources/resourceGroups@2020-06-01' = {
  name: rgName
  location: location
}

module storageAccount 'components/module-level0.bicep' = {
  scope: rg
  name: 'moduleLevel0'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
