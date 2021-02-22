################ kubectl ################
# download kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# mv kubectl
mv kubectl /bin
#########################################
################# helm ##################
# version: 3.5.2
# download helm
wget https://get.helm.sh/helm-v3.5.2-linux-amd64.tar.gz

# untar and move
tar -xzf helm-v3.5.2-linux-amd64.tar.gz && mv linux-amd64/helm /bin

# cleanup
rm helm-v3.5.2-linux-amd64.tar.gz && rm -rf linux-amd64
#########################################