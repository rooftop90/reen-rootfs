################# pwsh #################
# add ms repo, enables in-place pwsh updates
curl https://packages.microsoft.com/config/rhel/7/prod.repo | tee /etc/yum.repos.d/microsoft.repo

# install pwsh
dnf install powershell -y
########################################