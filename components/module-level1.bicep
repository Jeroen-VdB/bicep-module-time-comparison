param location string
param storageAccountName string

module modelLowerLevel 'module-level2.bicep' = {
  name: 'module-level2'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
