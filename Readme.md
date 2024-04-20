<h1 style="text-align: center;">Global Azure 2024 Ft. Lauderdale</h1>

### Bicep is a extermely readable and friend IaC language for Azure
Bicep [Documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/) 

More [Bicep Examples here](https://github.com/Azure/azure-docs-bicep-samples)

In this repo you can find basic examples plus the command line to run them

### After cloning the repo
- cd to the directory
- login
    ```
    az login
    ```
- If you have access to multiple subscription
    ```
    az account set --subscription "Sun Name"
    ```
    or
    ```
    az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    ```
- You can verify what account you got set up running
    ```
    az account show --output table
    ```

### What is next after you finish playing with Bicep ?
Checkout [Azure Stack](https://learn.microsoft.com/en-us/training/modules/intro-to-azure-stack/)