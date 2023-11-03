param location string
param storageAccountName string

module modelLowerLevel 'module-level5.bicep' = {
  name: 'module-level5'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
