#!/bin/bash

# Refresh the full stack

read -p "BEWARE!!! Going to clear the stack, VOLUMES INCLUDED. Proceed? (y/N): " -t 10 STR

if [ "$STR" == "y" ] ; then

  # Clear dangling images
  docker rmi $(docker images -qf dangling=true)

  ./900_docker_stack_remove.sh
  sleep 30
  ./010_docker_pull_gitlab.sh
  sleep 5
  ./020_docker_stack_deploy.sh

  # Clear dangling images again
  docker rmi $(docker images -qf dangling=true)

fi
