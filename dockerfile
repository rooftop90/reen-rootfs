FROM oraclelinux:8

# create and define build folder
RUN mkdir /build
WORKDIR /build

# copy scripts
COPY scripts/* /build/
RUN chmod 700 -R /build/

# update packages
RUN dnf update -y

# install system tools & utilities
RUN dnf install vim tree wget tar hostname git unzip -y

# run tools script
RUN ["/bin/bash", "-c", "./setup-tools.sh"]

# run az tools script
RUN ["/bin/bash", "-c", "./setup-az.sh"]

# run k8s tools script
RUN ["/bin/bash", "-c", "./setup-k8s.sh"]

# reset workdir
WORKDIR /
RUN rm -rf /build

# cmd
CMD ["/bin/sleep", "3600s"]
