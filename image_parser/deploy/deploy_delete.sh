#!/bin/bash

# Import the settings from the common settings file
source ../../common/project_settings.sh


gcloud beta functions delete $FUNCTION_NAME --quiet