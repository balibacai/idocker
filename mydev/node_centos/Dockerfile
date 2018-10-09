FROM sshd_centos:v1.1

MAINTAINER mistcheng

# install nodejs, see install document https://nodejs.org/en/download/package-manager/#enterprise-linux-and-fedora
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash - \
	&& yum install -y nodejs \
	# install yarn
	&& curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && yum install -y yarn \
	# npm install
	&& npm install -g vue-cli

WORKDIR /data/nodejs/project

EXPOSE 3000