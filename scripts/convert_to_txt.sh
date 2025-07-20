#!/bin/bash

# Convert all files with a given extension in a directory to txt files
# Usage: convert_to_txt.sh <input_directory> <output_directory> <input_extension>
# Example: bash convert_to_txt.sh data/input/application_letters data/input/application_letters docx

# Check if the number of arguments is correct
if [ "$#" -ne 3 ]; then
    echo "Illegal number of parameters"
    echo "Usage: convert_to_txt.sh <input_directory> <output_directory> <input_extension>"
    exit 1
fi

# Check if the input directory exists
if [ ! -d "$1" ]; then
    echo "Input directory does not exist"
    exit 1
fi

# Check if the output directory exists
if [ ! -d "$2" ]; then
    echo "Output directory does not exist"
    exit 1
fi

# Check if Pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Pandoc could not be found"
    echo "On Debian-based OSes: sudo apt install pandoc -y # to install Pandoc"
    exit 1
fi

# Convert all x files to txt files in the given directory
# shellcheck disable=SC2231
for file in $1/*.$3; do
    filename=$(basename -- "$file")
    filename="${filename%.*}"
    pandoc "$file" -o "$2/$filename.txt"
done

exit 0
