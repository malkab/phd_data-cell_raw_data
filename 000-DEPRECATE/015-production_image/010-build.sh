#!/bin/bash

# Version 2020-08-27

# -----------------------------------------------------------------
#
# Document here the purpose of the script.
#
# -----------------------------------------------------------------
#
# Builds a Docker image.
#
# -----------------------------------------------------------------

# Check mlkcontext to check. If void, no check will be performed
MATCH_MLKCONTEXT=production_image_kepler
# The name of the image to push
IMAGE_NAME=$MLKC_CELL_RAW_DATA_PRODUCTION_IMAGE_NAME
# The tag
IMAGE_TAG=$MLKC_CELL_RAW_DATA_PRODUCTION_IMAGE_TAG
# Dockerfile
DOCKERFILE=.
# Latest? Tag the image as latest, too
LATEST=true





# ---

# Check mlkcontext
if [ ! -z "${MATCH_MLKCONTEXT}" ] ; then

  if [ ! "$(mlkcontext)" = "$MATCH_MLKCONTEXT" ] ; then

    echo Please initialise context $MATCH_MLKCONTEXT

    exit 1

  fi

fi

# Build
docker build -t $IMAGE_NAME:$IMAGE_TAG $DOCKERFILE

# Tag latest, if asked
if [ "${LATEST}" = true ] ; then

  docker build -t $IMAGE_NAME:latest $DOCKERFILE

fi
