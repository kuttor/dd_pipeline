#! /bin/bash

# Author: Andrew Kuttor
# E-mail: andrew.kuttor@dimensiondata.com
# Entity: Dimension Data

# =============================================================================
# Dockerfile for creating ELK containers
# =============================================================================

# Assigning networks Assigning networks to containers

docker-create-network(){
  docker network create      \
    --subnet 10.1.0.0/16     \
    --gateway 10.1.0.1       \
    --ip-range=10.1.4.0/24
}

