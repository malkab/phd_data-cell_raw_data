#!/bin/bash

# Version 2020-09-19

# -----------------------------------------------------------------
#
# Document the purpose of the script here.
#
# -----------------------------------------------------------------
#
# Updates an stack from the GitLab registry.
#
# -----------------------------------------------------------------

# Check mlkcontext to check. If void, no check will be performed
MATCH_MLKCONTEXT=
# The stack name
STACKNAME=cell_raw_data
# Target default compose
DOCKER_COMPOSE=docker-compose.yaml





# ---

# Check mlkcontext

if [ ! -z "${MATCH_MLKCONTEXT}" ] ; then

  if [ ! "$(mlkcontext)" = "$MATCH_MLKCONTEXT" ] ; then

    echo Please initialise context $MATCH_MLKCONTEXT

    exit 1

  fi

fi


# Deploy the stack
docker stack deploy -c $DOCKER_COMPOSE $STACKNAME
