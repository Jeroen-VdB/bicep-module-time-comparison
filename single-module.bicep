targetScope = 'subscription'

param rgName string = 'rg-dvlp-no-modules'
param location string = 'westeurope'
param storageAccountName string = 'stdvlpnomodules'

resource rg 'Microsoft.Resources/resourceGroups@2020-06-01' = {
  name: rgName
  location: location
}

module storageAccount 'components/storage-account.bicep' = {
  scope: rg
  name: 'storage-account-deployment'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
