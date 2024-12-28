# Create a resource group
az group create --name rg-lbg-voteapp-test-uks --location ukwest

# Create a container registry
az acr create --resource-group rg-lbg-voteapp-test-uks --name crlbgvoteapptestuk --sku Basic

# Create a Kubernetes cluster
az aks create \
    --resource-group rg-lbg-voteapp-test-uks \
    --name demovotingapp \
    --node-count 1 \
    --generate-ssh-keys
