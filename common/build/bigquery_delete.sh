#!/bin/bash

# Import the settings from the common settings file
source ../project_settings.sh

# Delete the dataset | needs gcloud alpha component
# https://cloud.google.com/sdk/gcloud/reference/alpha/bq/datasets/delete

# gcloud components install alpha
gcloud alpha bq datasets delete "app_dataset_$ENV_TYPE" --remove-tables --quiet