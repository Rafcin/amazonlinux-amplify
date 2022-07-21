FROM amazonlinux:2
LABEL maintainer="Raf Szuminski"
LABEL version="0.1"
LABEL description="Modified Amazon Linux 2 image for AWS Amplify deployments."

# Install systemd -- See https://hub.docker.com/_/centos/
RUN yum -y update; yum clean all

# Install requirements.
RUN yum makecache fast \
 && yum -y install deltarpm epel-release initscripts openssl11 openssl11-devel \
 && yum -y update \
 && yum -y install \
      sudo \
      which \
      python-pip \
      python3 \
      python3-pip \
 && yum clean all

CMD ["/usr/sbin/init"]Error saving credentials: error storing credentials - err: exit status 1, out: `error storing credentials - err: exit status 1, out: `pass not initialized: exit status 1: Error: password store is empty. Try "pass init".``
