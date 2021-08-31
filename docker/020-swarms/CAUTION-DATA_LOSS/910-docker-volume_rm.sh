#!/bin/bash

# Version: 2021-08-30

# -----------------------------------------------------------------
#
# Document purpose of script here.
#
# -----------------------------------------------------------------
#
# Remove Docker volumes, with confirmation.
#
# -----------------------------------------------------------------
# Check mlkctxt to check. If void, no check will be performed. If NOTNULL, any
# activated context will do, but will fail if no context was activated.
MATCH_MLKCTXT=
# Name of volumes to be deleted here, separated by an space and no quotes. Can
# be multiline.
VOLUMES=(cell_db_postgis)





# ---

# Check mlkctxt is present at the system
if command -v mlkctxt &> /dev/null ; then

  if ! mlkctxt -c $MATCH_MLKCTXT ; then exit 1 ; fi

fi

VOLUMES_F=

if [ ! -z "${VOLUMES}" ] ; then

  for E in "${VOLUMES[@]}" ; do

    echo $E

    VOLUMES_F="${VOLUMES_F} ${E} "

  done

else

  echo No volumes provided, exiting...
  exit 1

fi

read -p "BEWARE!!! Going to clear the above volumes. Proceed? (y/N): " -t 10 str

if [ "$str" == "y" ]
then

  docker volume rm $VOLUMES_F

else

    exit 0

fi
