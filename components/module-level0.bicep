param location string
param storageAccountName string

module modelLowerLevel 'module-level1.bicep' = {
  name: 'module-level1'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
