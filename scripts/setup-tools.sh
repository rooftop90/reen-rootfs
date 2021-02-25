################# pwsh #################
# add ms repo, enables in-place pwsh updates
curl https://packages.microsoft.com/config/rhel/7/prod.repo | tee /etc/yum.repos.d/microsoft.repo

# install pwsh
dnf install powershell -y
########################################
################# vault ################
# download vault
wget https://releases.hashicorp.com/vault/1.6.2/vault_1.6.2_linux_amd64.zip

# unzip and move
unzip vault_1.6.2_linux_amd64.zip && mv vault /bin
########################################