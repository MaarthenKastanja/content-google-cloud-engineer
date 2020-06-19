#!/bin/bash

set -e

# Import the settings from the common settings file
source ../../common/project_settings.sh

gcloud iam service-accounts delete \
    $SERVICE_ACCOUNT_NAME \
    --quiet

gcloud beta container clusters create $PRODUCT_CLUSTER_NAME \
    --zone $PROJECT_ZONE \
    --quiet