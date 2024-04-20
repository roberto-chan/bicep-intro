// az deployment sub create --location eastus2 --template-file resourceGroup.bicep --parameters resourceGroupName=rg-demo resourceGroupLocation=eastus2 

targetScope = 'subscription'
param resourceGroupName string
param resourceGroupLocation string

resource newRG 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
}
