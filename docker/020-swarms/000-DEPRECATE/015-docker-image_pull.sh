#!/bin/bash

# Version: 2021-08-30

# -----------------------------------------------------------------
#
# Download needed images.
#
# -----------------------------------------------------------------
#
# Pulls images from the DockerHub public registry.
#
# -----------------------------------------------------------------
# A set of images to pull, in the form (image0 image1).
# Could be multiline inside the parentheses.
IMAGES=(malkab/postgis:holistic_hornet)





# ---

if [ ${#IMAGES[@]} == 0 ]; then

    echo "No images defined, exiting..."
    exit 1

fi

for IMAGE in "${IMAGES[@]}" ; do

    docker pull $IMAGE

done;
