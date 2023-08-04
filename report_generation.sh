#!/bin/bash

# Generating summary report
echo "Summary Report"
echo "----------------"

# Count the number of rows (excluding header)
total_records=$(wc -l < data/processed_data.csv)
echo "Total Records: $total_records"

# Average score
average_score=$(awk -F',' '{ sum += $3 } END { printf "%.2f\n", sum/NR }' data/processed_data.csv)
echo "Average Score: $average_score"

# Unique names
echo "Unique Names:"
awk -F',' '{print $1}' data/processed_data.csv | sort | uniq
