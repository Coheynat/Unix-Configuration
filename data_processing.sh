#!/bin/bash

# Data processing using awk and grep
awk -F',' '$3 >= 85' data/input.csv > data/processed_data.csv
