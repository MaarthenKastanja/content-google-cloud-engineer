#!/bin/bash

# Import the settings from the common settings file
source ../project_settings.sh

gcloud beta bigtable instances delete $BIGTABLE_INSTANCE_ID --quiet
