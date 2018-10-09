FROM sshd_centos:v1.1

MAINTAINER mistcheng

ARG GO_VERSION=1.11

# install go, see install document https://golang.org/doc/install
RUN curl https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz > /tmp/go${GO_VERSION}.linux-amd64.tar.gz \
	# untar
	&& tar -C /usr/local -xzf /tmp/go${GO_VERSION}.linux-amd64.tar.gz \
	# rm tar
	&& rm -f /tmp/go${GO_VERSION}.linux-amd64.tar.gz

# config go env
RUN mkdir -p /data/go/src /data/go/pkg /data/go/bin /data/go/src/project \
	&& echo 'export GOPATH=/data/go' > /etc/profile.d/go.sh && echo 'export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin' >> /etc/profile.d/go.sh \
	# govendor
	&& source /etc/profile && /usr/local/go/bin/go get github.com/kardianos/govendor

WORKDIR /data/go/src/project

EXPOSE 8080