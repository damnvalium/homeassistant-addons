#!/usr/bin/with-contenv bashio
# shellcheck shell=bash

CONFIG_PATH=/data/options.json
export MINIO_ROOT_USER="$(bashio::config 'root_user')"
export MINIO_ROOT_PASSWORD="$(bashio::config 'root_password')"