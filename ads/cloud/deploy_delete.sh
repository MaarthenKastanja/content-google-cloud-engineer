#!/bin/bash

set -e

# Import the settings from the common settings file
source ../../common/project_settings.sh

gcloud deployment-manager deployments delete ad-service-deployment --quiet