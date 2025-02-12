#!/usr/bin/env bash

# get all of daily data from weather stations and generate list of stations
code/get_ghcnd_data.bash "ghcnd-all.tar.gz"
code/get_ghcnd_all_files.bash

# get listing of types of data found at each weather station
code/get_ghcnd_data.bash "ghcnd-stations.txt"

# get metadata for each weather station
code/get_ghcnd_data.bash "ghcnd-inventory.txt"


