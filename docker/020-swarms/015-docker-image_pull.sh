#!/bin/bash

# Version: 2020-09-19

# -----------------------------------------------------------------
#
# Document the script purpose here.
#
# -----------------------------------------------------------------
#
# Pulls images from the GitLab registry with confirmation.
#
# -----------------------------------------------------------------

# The user at GitLab.
USER={{{MLKC_GITLAB_USER}}}
# A set of images to upload, in the form ("image0" "image1").
# Could be multiline inside the parentheses. Include also the GitLab registry
# at the image name.
IMAGES=(
  registry.gitlab.com/malkab-phd-data/malkab-phd-data-cell_raw_data/cell_raw_data:latest
)
# The default GitLab registry.
GITLAB_REGISTRY=registry.gitlab.com





# ---

if [ -z "${USER}" ]; then

    echo "No user defined, exiting..."

    exit 1

fi

if [ ${#IMAGES[@]} == 0 ]; then

    echo "No images defined, exiting..."

    exit 1

fi

echo Please provide a READ REGISTRY GitLab token...

docker login $GITLAB_REGISTRY -u $USER

for IMAGE in "${IMAGES[@]}" ; do

    docker pull $IMAGE

done;
