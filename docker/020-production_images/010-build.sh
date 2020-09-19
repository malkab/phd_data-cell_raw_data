#!/bin/bash

# Version 2020-08-27

# -----------------------------------------------------------------
#
# Builds the production PG image.
#
# -----------------------------------------------------------------
#
# Builds a Docker image.
#
# -----------------------------------------------------------------

# Check mlkcontext to check. If void, no check will be performed
MATCH_MLKCONTEXT=kepler
# The name of the image to push
IMAGE_NAME=$MLKC_PHD_DATA_PRODUCTION_IMAGE
# The tag
IMAGE_TAG=$MLKC_PHD_DATA_VERSION
# Dockerfile
DOCKERFILE=.
# Latest? Tag the image as latest, too
LATEST=true


# Copy assets - DB design

# cp \
#   ../../../../persistence/work_packages/wp_2019_05_22_00_sunnsaas_db_setup/src/container_scripts/010-db-set-up.sql \
#   assets/

# cp \
#   ../../../../persistence/work_packages/wp_2019_05_22_00_sunnsaas_db_setup/src/container_scripts/012-db-helper_functions_views.sql \
#   assets/

# cp \
#   ../../../../persistence/work_packages/wp_2019_05_22_00_sunnsaas_db_setup/src/container_scripts/015-db-api_functions.sql \
#   assets/

# cp \
#   ../../../../persistence/work_packages/wp_2019_05_22_00_sunnsaas_db_setup/src/container_scripts/017-db-deprecated_functions.sql \
#   assets/

# cp \
#   ../../../../persistence/work_packages/wp_2019_05_22_00_sunnsaas_db_setup/src/container_scripts/020-docs-data.sql \
#   assets/

# # Test data
# cp \
#   ../../../../persistence/work_packages/wp_2019_05_22_00_sunnsaas_db_setup/src/container_scripts/030-init-data.sql \
#   assets/

# # cp \
# #   ../../../../persistence/work_packages/wp_2020_03_26_00_test_data/data/test-data-realistic.sql \
# #   assets/test-data-realistic.sql

# # cp \
# #   ../../../../persistence/work_packages/wp_2020_03_26_00_test_data/data/json_datasets/*.sql \
# #   assets/

# # cp \
# #   ../../../../persistence/work_packages/wp_2020_03_26_00_test_data/data/json_datasets/jordan_tests/*.sql \
# #   assets/





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
