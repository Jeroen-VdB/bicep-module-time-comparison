param location string
param storageAccountName string

module storageAccount 'storage-account.bicep' = {
  name: 'storage-account-deployment'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
