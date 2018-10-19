FROM go_centos:v1.1

MAINTAINER mistcheng

ARG PROTO_BUFFER_VERSION=3.6.1

# install gRPC
RUN source /etc/profile && /usr/local/go/bin/go get -u google.golang.org/grpc

# install the protoc compiler
RUN mkdir -p /usr/local/protoc \
	&& curl -L https://github.com/protocolbuffers/protobuf/releases/download/v${PROTO_BUFFER_VERSION}/protoc-${PROTO_BUFFER_VERSION}-linux-x86_64.zip > /tmp/protoc-${PROTO_BUFFER_VERSION}-linux-x86_64.zip > /usr/local/protoc/protoc-${PROTO_BUFFER_VERSION}-linux-x86_64.zip \
	&& yum install -y unzip && cd /usr/local/protoc && unzip protoc-${PROTO_BUFFER_VERSION}-linux-x86_64.zip && rm protoc-${PROTO_BUFFER_VERSION}-linux-x86_64.zip \
	&& ln -s /usr/local/protoc/bin/protoc /usr/local/bin

# install the protoc plugin for Go
RUN source /etc/profile && /usr/local/go/bin/go get -u github.com/golang/protobuf/protoc-gen-go
