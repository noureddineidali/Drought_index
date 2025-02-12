#!/usr/bin/env bash

file=$1
local_file="data/$file"
remote_url="https://www.ncei.noaa.gov/pub/data/ghcn/daily/$file"

# Check if the file exists
if [ -f "$local_file" ]; then
    echo "Checking if '$file' is up to date..."
    
    # Use wget with -N to check for updates
    wget -N -P data/ "$remote_url"

    echo "Update check completed."
else
    echo "Downloading '$file'..."
    wget -P data/ "$remote_url"
fi
