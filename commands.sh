#! /bin/bash

# Author: Andrew Kuttor
# E-mail: andrew.kuttor@dimensiondata.com

# =============================================================================
# Dockerfile for creating ELK containers
# =============================================================================

# Assigning networks Assigning networks to containers

# Create network resource
docker-create-network(){
  # Network device configuration
  SUBNET="10.1.0.0/16"
  GATEWAY="10.1.0.1"
  IP-RANGE="10.1.4.0/24"
  DRIVER="bridge"

  # Create network device
  docker network create    \
    --subnet $SUBNET       \
    --gateway $GATEWAY     \
    --ip-range=$IP-RANGE   \
    --driver=$DRIVER

}

# List current network setup
docker-network-ls(){
  docker network ls
}

