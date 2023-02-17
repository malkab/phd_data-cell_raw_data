#!/bin/bash

# ---------------------------
#
# Common settings for all contexts.
#
# ---------------------------
#
# Prefix variables with MLKC_.
#
# ---------------------------

# -----
# Instance ID
# -----
export MLKC_CELL_RAW_DATA_INSTANCE_NAME=kepler

# -----
# SSH
# -----
export MLKC_CELL_RAW_DATA_SSH_USER_NAME=$MLKC_SYSTEM_37NORTH_USER
export MLKC_CELL_RAW_DATA_SSH_HOST=$MLKC_SYSTEM_37NORTH_HOST
export MLKC_CELL_RAW_DATA_REMOTE_FOLDER=$MLKC_CELL_RAW_DATA_SSH_USER_NAME@$MLKC_CELL_RAW_DATA_SSH_HOST:/home/apps/cell_raw_data
export MLKC_CELL_RAW_DATA_SSH_PORT=22

# -----
# PostGIS
# -----
export MLKC_CELL_RAW_DATA_NETWORK=
export MLKC_CELL_RAW_DATA_PG_HOST=$MLKC_SYSTEM_37NORTH_HOST
export MLKC_CELL_RAW_DATA_PG_USER=$MLKC_SYSTEM_37NORTH_PG_USER
export MLKC_CELL_RAW_DATA_PG_PORT=$MLKC_SYSTEM_37NORTH_PG_PORT
export MLKC_CELL_RAW_DATA_PG_PASS=$MLKC_SYSTEM_37NORTH_PG_PASS
export MLKC_CELL_RAW_DATA_PG_DB=cell_raw_data
export MLKC_CELL_RAW_DATA_PG_DOCKER_EXTERNAL_PORT=5632

export MLKC_CELL_RAW_DATA_USER_CELL_MASTER=$MLKC_SYSTEM_37NORTH_PG_USER_CELL_MASTER
export MLKC_CELL_RAW_DATA_PASS_CELL_MASTER=$MLKC_SYSTEM_37NORTH_PG_PASS_CELL_MASTER
export MLKC_CELL_RAW_DATA_USER_CELL_READONLY=$MLKC_SYSTEM_37NORTH_PG_USER_CELL_READONLY
export MLKC_CELL_RAW_DATA_PASS_CELL_READONLY=$MLKC_SYSTEM_37NORTH_PG_PASS_CELL_READONLY

# PG Config for 64GB RAM, 8 CPU, SSD
# This is for PG configuration file, not for the pool
export MLKC_CELL_RAW_DATA_PG_MAX_CONNECTIONS=6000
export MLKC_CELL_RAW_DATA_PG_SHARED_BUFFERS=35GB
export MLKC_CELL_RAW_DATA_PG_EFFECTIVE_CACHE_SIZE=46GB
export MLKC_CELL_RAW_DATA_PG_MAINTENANCE_WORK_MEM=2GB
export MLKC_CELL_RAW_DATA_PG_CHECKPOINT_COMPLETION_TARGET=0.7
export MLKC_CELL_RAW_DATA_PG_WAL_BUFFERS=16MB
export MLKC_CELL_RAW_DATA_PG_DEFAULT_STATISTICS_TARGET=500
export MLKC_CELL_RAW_DATA_PG_RANDOM_PAGE_COST=4.0
export MLKC_CELL_RAW_DATA_PG_EFFECTIVE_IO_CONCURRENCY=2
export MLKC_CELL_RAW_DATA_PG_WORK_MEM=127MB
export MLKC_CELL_RAW_DATA_PG_MIN_WAL_SIZE=512MB
export MLKC_CELL_RAW_DATA_PG_MAX_WAL_SIZE=2GB
export MLKC_CELL_RAW_DATA_PG_MAX_WORKER_PROCESSES=8
export MLKC_CELL_RAW_DATA_PG_MAX_PARALLEL_WORKERS_PER_GATHER=4
export MLKC_CELL_RAW_DATA_PG_MAX_PARALLEL_WORKERS=8
export MLKC_CELL_RAW_DATA_PG_MAX_PARALLEL_MAINTENANCE_WORKERS=4