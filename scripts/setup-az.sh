############### azure cli ###############
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# create repo
echo -e "[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/azure-cli.repo

# install
dnf install azure-cli -y
#########################################
################ az copy ################
# version 10.8.0

# download azcopy
wget https://aka.ms/downloadazcopy-v10-linux

# untar and mv
tar -xzf downloadazcopy-v10-linux && mv azcopy_linux_amd64_10.8.0/azcopy /bin

# cleanup
rm -f downloadazcopy-v10-linux && rm -rf azcopy_linux_amd64_10.8.0/
#########################################