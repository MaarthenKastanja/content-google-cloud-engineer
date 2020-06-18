#!/bin/bash

set -e

# Import the settings from the common settings file
source ../project_settings.sh

gcloud compute firewall-rules delete "$SERVICES_NETWORK-internal-access" --quiet
gcloud compute firewall-rules delete "$SERVICES_NETWORK-ssh" --quiet
gcloud beta compute networks subnets delete $PRODUCT_SUBNET --region=$PROJECT_REGION  --quiet
gcloud beta compute networks subnets delete $ADS_SUBNET --region=$PROJECT_REGION --quiet
gcloud compute networks delete $SERVICES_NETWORK  --quiet
