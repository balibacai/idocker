# startup all services
docker-compose up -d

# build images
docker-compose build

# build images and restart all services
docker-compose up --build -d

# recreate container and restart all services
docker-compose up --force-recreate -d

# go into backend container with exec
docker-compose exec backend /bin/bash
docker-compose exec backend /usr/bin/zsh