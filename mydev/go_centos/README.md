# build
docker build -t go_centos:v1.1 .

# force build
docker build --no-cache -t go_centos:v1.1 .

# run with ssh
docker run -d -v /your/local/project:/data/go/src/project -p 36000:22 -p 8080:8080 go_centos:v1.1

# run once
docker run --rm -it go_centos:v1.1 /usr/bin/zsh