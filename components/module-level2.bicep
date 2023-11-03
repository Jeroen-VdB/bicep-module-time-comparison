param location string
param storageAccountName string

module modelLowerLevel 'module-level3.bicep' = {
  name: 'module-level3'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
