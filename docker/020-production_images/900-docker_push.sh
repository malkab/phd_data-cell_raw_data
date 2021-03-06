#!/bin/bash

# Version: 2020-09-01

# -----------------------------------------------------------------
#
# Push production images to GitLab.
#
# -----------------------------------------------------------------
#
# Pushes images to the GitLab registry with confirmation.
#
# -----------------------------------------------------------------

# Check mlkcontext to check. If void, no check will be performed.
MATCH_MLKCONTEXT=
# A set of images to upload, in the form (image0 image1). Could be multiline
# inside the parentheses. Provide the full image names as shown in docker
# images.
IMAGES=(

  image1
)
# The user for login. Leave blank if the default DockerHub repo is going to be
# used.
USER=$MLKC_GITLAB_USER
# The registry for login. Leave blank if the default DockerHub repo is going to
# be used.
REGISTRY=$MLKC_GITLAB_REGISTRY





# ---

# Check mlkcontext

if [ ! -z "${MATCH_MLKCONTEXT}" ] ; then

  if [ ! "$(mlkcontext)" = "$MATCH_MLKCONTEXT" ] ; then

    echo Please initialise context $MATCH_MLKCONTEXT

    exit 1

  fi

fi


if [ ${#IMAGES[@]} == 0 ]; then

  echo "No images defined, exiting..."

  exit 1

fi


if [ ! -z "${USER}" ] ; then

  echo Please provide registry credentials...

  docker login $REGISTRY -u $USER

fi


for IMAGE in "${IMAGES[@]}" ; do

  docker push $IMAGE

done
