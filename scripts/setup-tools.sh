################# pwsh #################
# add ms repo, enables in-place pwsh updates
curl https://packages.microsoft.com/config/rhel/7/prod.repo | tee /etc/yum.repos.d/microsoft.repo

# install pwsh
dnf install powershell -y
########################################
################# vault ################
# download vault
wget https://releases.hashicorp.com/vault/1.7.1/vault_1.7.1_linux_amd64.zip

# unzip and move
unzip vault_1.7.1_linux_amd64.zip && mv vault /bin
########################################
################# gacp #################
# install nodejs
dnf install nodejs -y

# install gacp
npm i -g gacp
########################################