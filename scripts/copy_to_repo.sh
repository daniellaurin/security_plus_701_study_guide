#!/bin/bash

# Source directory
source_dir="/home/dlaurin/notes/school/"

# Destination directory (GitHub repo)
destination="/home/dlaurin/IT/security_plus_701_study_guide/orgmode_notes/"

# List of files to copy
files=(
  "sec_chap_I.norg"
  "sec_chap_II.norg"
  "sec_chap_III.norg"
  "sec_index.norg"
  "sec_study_guide.norg"
  "sec_study_tracker.norg"
)

# Copy each file
for file in "${files[@]}"; do
  if [ -f "${source_dir}${file}" ]; then
    cp "${source_dir}${file}" "$destination"
    echo "Copied $file to $destination"
  else
    echo "Warning: $file not found in $source_dir"
  fi
done

echo "File copying completed."
