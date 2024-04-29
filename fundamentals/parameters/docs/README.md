# Bicep Parameters and Decorators

## Parameters

Parameters in Bicep allow you to define values that can be passed into your Bicep templates when deploying Azure resources. They provide flexibility and customization options by allowing users to specify different values for parameters at deployment time. Here are the key points to understand about Bicep parameters:

### Definition: 

Parameters are defined using the param keyword followed by the parameter name, type, and optional default value.

### Example:

`param location string = 'westus'`

Usage: Parameters can be used within your Bicep templates to reference values provided at deployment time.Example:

resource storageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'mystorageaccount'
  location: location
  ...
}

## Decorators:

Decorators in Bicep are annotations that provide additional metadata or behavior to resources or parameters within a Bicep template. They allow you to customize the behavior of resources or provide additional information to the deployment process.

### Definition: 

Decorators are specified using the @ symbol followed by the decorator name and any associated arguments.Example:

resource storageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'mystorageaccount'
  @tags({
    environment: 'production',
    department: 'finance'
  })
  ...
}


### usage:

Decorators are applied to specific resources or paramteres within your Bicep template to customize their behavior or provide additional metadata.

@allowed([
  'Microsoft.Storage/storageAccounts/blobServices/containers/write'
])
param containerPermissions array = []

# Summary
By understanding and utilizing Bicep parameters and decorators effectively, you can create more flexible and customizable Azure resource deployments using Bicep templates.