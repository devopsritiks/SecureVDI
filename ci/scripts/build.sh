#!/bin/bash
set28cd app/vdi-manager && docker build -t $DOCKER_REGISTRY/vdi-manager:1.0 .
docker push $DOCKER_REGISTRY/vdi-manager:1.0
cd app/vdi-desktop && docker build -t $DOCKER_REGISTRY/vdi-desktop:1.0 .
docker push $DOCKER_REGISTRY/vdi-desktop:1.0
