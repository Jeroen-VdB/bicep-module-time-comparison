param location string
param storageAccountName string

module modelLowerLevel 'module-level4.bicep' = {
  name: 'module-level4'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
