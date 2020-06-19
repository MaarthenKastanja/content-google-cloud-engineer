#!/bin/bash

# Import the settings from the common settings file
source ../project_settings.sh

gsutil rb -f gs://$PRIVATE_ASSETS/