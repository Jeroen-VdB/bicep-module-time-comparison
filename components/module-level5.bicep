param location string
param storageAccountName string

module modelLowerLevel 'storage-account-module.bicep' = {
  name: 'storage-account-module'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
