// az deployment sub create --location eastus2 --template-file resourceGroup.bicep --parameters resourceGroupName=rg-demo resourceGroupLocation=eastus2 

targetScope = 'subscription'
param resourceGroupName string
param resourceGroupLocation string

@minValue(2)
@maxValue(5)
param count int

resource newRG 'Microsoft.Resources/resourceGroups@2022-09-01' = [for i in range(0, count): {
  name: '${resourceGroupName}-${i}'
  location: resourceGroupLocation
}]



