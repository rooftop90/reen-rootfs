FROM oraclelinux:8

# update packages
RUN dnf update -y

# install system tools & utilities
RUN dnf install vim tree -y

# cmd
CMD ["/bin/sleep", "3600s"]