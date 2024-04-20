//az deployment group create --resource-group rg-demo --template-file publicIp.bicep --parameters publicIpName=MyPublicIP

param publicIpName string
param location string = resourceGroup().location
param skuName string = 'Standard'

resource publicIP 'Microsoft.Network/publicIPAddresses@2021-02-01' = {
  name: publicIpName
  location: location
  sku: {
    name: skuName
  }
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
  }
}

// output publicIpOutput string = publicIP.properties.ipAddress
