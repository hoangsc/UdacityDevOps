# create resource group
az group create -n Azuredevops -l "west europe"

# create/deploy web app
az webapp up -g Azuredevops -l "west europe" --sku F1 -n web-app-hoangcv1