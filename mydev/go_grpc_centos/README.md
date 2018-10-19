# build
docker build -t go_grpc_centos:v1.0 .

# force build
docker build --no-cache -t go_grpc_centos:v1.0 .

# run with ssh
docker run -d -v /your/local/project:/data/go/src/project -p 36000:22 -p 8080:8080 go_grpc_centos:v1.0

# run once
docker run --rm -it go_grpc_centos:v1.0 /usr/bin/zsh