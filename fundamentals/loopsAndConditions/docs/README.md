# Bicep Loops and Conditions

Loops and conditions allows you to automate and customize resource deployments on dynamic conditions.

## Loops

Loops in Bicep allows you to iterate over lists or ranges of values and perform operations or create resources dynamically. Key points about loops include:

### Syntax

Loops are defines using the `for` keyword followed by the loop variable, `in` keyword, and the expression defining the list or range to iterate over.

### Example

for (item in items) {
    // Loop body
}

## Usage

Loops can be used to iterate over arrays, object, or ranges of values, allowing you to dynamically generate resources or configurations based on the contents of the loop.

### Example

var locations = ['eastus', 'westus', 'centralus']

for (location in locations) {
    resource storageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
        name: 'storage${location}'
        location: location
        ...
    }
}

## Conditions

Conditions in Bicep allow you to define logic based on boolean expressions and control the flow of your tempalte execution.

### Syntax

Conditions are defines using the `if` keyword followed by the boolean expression to evaluate. It's also possible to use the `else` to define alternative logic

### Example

if (condition) {
    // If block
}
else {
    // Else block
}

## Usage

Conditions can be used to control resource creation, configuration settings, or other logic within your Bicep template based on dynamic conditions.

### Example

if (environment == 'production') {
    resource appServicePlan 'Microsoft.Web/serverFarms@2020-06-01' = {
        name: 'production-plan'
        ...
    }
}
else {
    resource appServicePlan 'Microsoft.Web/serverFarms@2020-06-01' = {
        name: 'development-plan'
        ...
    }
}






