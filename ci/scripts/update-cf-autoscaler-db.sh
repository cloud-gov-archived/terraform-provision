#!/bin/sh
set -e
SCRIPTPATH=$( cd "$(dirname "$0")" ; pwd -P )

# Check environment variables
export DATABASES="autoscaler"
export STATE_FILE_PATH="${STATE_FILE_PATH}"
export TERRAFORM="${TERRAFORM_BIN:-terraform}"
export TERRAFORM_DB_HOST_FIELD="cf_as_rds_host"
export TERRAFORM_DB_USERNAME_FIELD="cf_as_rds_username"
export TERRAFORM_DB_PASSWORD_FIELD="cf_as_rds_password"

"$SCRIPTPATH"/create-and-update-db.sh
