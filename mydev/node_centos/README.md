# build
docker build -t node_centos:v1.1 .

# force build
docker build --no-cache -t node_centos:v1.1 .

# run with ssh
docker run -d -v /your/local/project:/data/nodejs/project -p 36000:22 -p 8000:8000 node_centos:v1.1

# run once
docker run --rm -it node_centos:v1.1 /usr/bin/zsh