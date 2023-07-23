#!/usr/bin/env bash

export HOSTNAME=$(hostname)
export DRONE_VERSION=2.18.0
export DRONE_RUNNER_VERSION=1.8.3
export GITEA_VERSION=1.20.1
export IP_ADDRESS=192.168.0.92 # Replace this by machine IPv4 address
export GITEA_ADMIN_USER="adminadmin" # Replace this by username of admin
export DRONE_RPC_SECRET=$(echo ${HOSTNAME} | openssl dgst -md5 -hex)

# Replace this 2 values by values from OAuth2 application creating form in Gitea
export DRONE_GITEA_CLIENT_ID=""
export DRONE_GITEA_CLIENT_SECRET=""

docker compose up -d

echo ""
echo "Gitea: http://${IP_ADDRESS}:3000/"
echo "Drone: http://${IP_ADDRESS}:3001/"
