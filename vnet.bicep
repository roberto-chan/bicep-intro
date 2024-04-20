//az deployment group create --resource-group rg-demo --template-file vnet.bicep --parameters vnetName=vnet-test location=eastus2
targetScope = 'resourceGroup'

param vnetName string
param location string

resource vnet 'Microsoft.Network/virtualNetworks@2023-04-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'subnet1'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
      {
        name: 'subnet2'
        properties: {
          addressPrefix: '10.0.2.0/24'
        }
      }
    ]
  }
  
}

