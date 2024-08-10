#!/bin/bash

# Source directory
source_dir="/home/dlaurin/notes/school/"

# Destination directory
dest_dir="/home/dlaurin/IT/security_plus_701_study_guide/"

# List of files to link
files=(
  "sec_index.norg"
  "sec_study_guide.norg"
  "sec_study_tracker.norg"
  "sec_chap_I.norg"
  "sec_chap_II.norg"
)

# Create symbolic links
for file in "${files[@]}"; do
  if [ -f "${source_dir}${file}" ]; then
    ln -s "${source_dir}${file}" "${dest_dir}${file}"
    echo "Created symbolic link for $file"
  else
    echo "Warning: $file not found in $source_dir"
  fi
done

echo "Symbolic link creation completed."
