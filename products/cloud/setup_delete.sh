#!/bin/bash

set -e

# Import the settings from the common settings file
source ../../common/project_settings.sh

SERVICE_ACCOUNT_NAME=product-service

gcloud iam service-accounts delete \
    $(gcloud iam service-accounts list \
    --filter="displayName:$SERVICE_ACCOUNT_NAME" \
    --format='value(email)') \
    --quiet

#gcloud beta container clusters delete fs-dev-app-clusters \
#    --zone us-central1-b\
#    --quiet

gcloud beta container clusters delete $PRODUCT_CLUSTER_NAME \
    --zone $PROJECT_ZONE \
    --quiet