#!/bin/bash

# Version: 2020-08-22

# -----------------------------------------------------------------
#
# Document here the purpose of the script.
#
# -----------------------------------------------------------------
#
# Creates a Docker network.
#
# -----------------------------------------------------------------

# Check mlkcontext to check. If void, no check will be performed
MATCH_MLKCONTEXT=production_image_kepler
# Network name
NETWORK=cell
# Type: overlay or none
TYPE=overlay
# Attachable?
ATTACHABLE=true






# ---

# Check mlkcontext
if [ ! -z "${MATCH_MLKCONTEXT}" ] ; then

  if [ ! "$(mlkcontext)" = "$MATCH_MLKCONTEXT" ] ; then

    echo Please initialise context $MATCH_MLKCONTEXT

    exit 1

  fi

fi

# Type?
if [ ! -z "${TYPE}" ] ; then

  TYPE="-d ${TYPE}"

fi

# Attacheable?
if [ "$ATTACHABLE" = true ] ; then

  ATTACHABLE="--attachable"

fi

eval docker network create $TYPE $ATTACHABLE $NETWORK
