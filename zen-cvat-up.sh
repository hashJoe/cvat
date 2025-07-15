#!/bin/bash
# export CVAT_HOST=100.119.43.117
# docker compose -f docker-compose.yml -f components/serverless/docker-compose.serverless.yml up -d
# CLIENT_PLUGINS=plugins/sam2 CVAT_HOST=100.119.43.117 CVAT_VERSION=v2.21.2 docker compose -f docker-compose.yml -f docker-compose.dev.yml -f components/serverless/docker-compose.serverless.yml -p cvat up -d

CLIENT_PLUGINS=plugins/sam2 CVAT_HOST=100.119.43.117 CVAT_VERSION=v2.21.2 \
docker compose -f docker-compose.yml \
              -f docker-compose.dev.yml \
              -f components/serverless/docker-compose.serverless.yml \
              -f docker-compose.override.yml \
              -p cvat up -d
