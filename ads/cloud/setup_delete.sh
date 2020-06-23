#!/bin/bash

set -e

# Import the settings from the common settings file
source ../../common/project_settings.sh

gcloud spanner databases delete $PRODUCT_DB_NAME --instance=$PRODUCT_DB_INSTANCE_NAME --quiet

gcloud spanner instances delete $PRODUCT_DB_INSTANCE_NAME --quiet