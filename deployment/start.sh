#!/bin/bash
# requirements
# The Docker m.b. at least 20.10.10
# The containerd m.b. at least 1.5.6
# The docker-compose m.b. at least 1.28.0 

git clone -b release https://github.com/netbox-community/netbox-docker.git
cd netbox-docker
tee docker-compose.override.yml <<EOF
services:
  netbox:
    ports:
      - 8000:8080
EOF
docker compose pull
docker compose up