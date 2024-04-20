//az deployment sub create --template-file main.bicep --location eastus2
targetScope = 'subscription'

param publicIpName string
param resourceGroupName string
param resourceGroupLocation string
// param vnetName string

resource newRG 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
}

module publicIPModule 'module/publicIp.bicep' = {
  name: 'publicIPModule'
  params: {
    publicIpName: publicIpName
    location: newRG.location
  }
  scope: newRG
}

// module vnetModule 'module/vnet.bicep' = {
//   name: 'vnetModule'
//   scope: newRG
//   params: {
//     vnetName: vnetName
//     location: newRG.location
//   }
// }

// output publicIpOutput string = publicIPModule.outputs.publicIpOutput

