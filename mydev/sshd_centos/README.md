# build
docker build -t sshd_centos:v1.1 .

# force build
docker build --no-cache -t sshd_centos:v1.1 .

# run with ssh
docker run -d -p 36000:22 sshd_centos:v1.1

# run once
docker run --rm -it sshd_centos:v1.1 /usr/bin/zsh