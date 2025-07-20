#!/bin/bash

# Download a dataset or competition data from Kaggle using the Kaggle API
# Usage: download_kaggle_dataset.sh <type> <dataset-name> <output_dir>
# Arguments:
#  type: The type of the Kaggle data to download. Either '-d' or 'dataset' for dataset, or '-c' or 'competition' for competition.
#  dataset-name: The name of the dataset or competition on Kaggle. For datasets, it should be in the format 'username/dataset-name'.
#  output_dir: The directory where the data will be downloaded and extracted.

# Examples:
# Example 1: bash download_kaggle_dataset.sh "-d" "algord/fake-news" "data/input/kaggle_datasets/fake_news"
# Example 2: bash download_kaggle_dataset.sh "competition" "titanic" "data/input/kaggle_competitions/titanic"

# Check if the Kaggle API is installed
if ! [ -x "$(command -v kaggle)" ]; then
    echo "Error: kaggle is not installed. Please install it using pip, and set up the Kaggle API."
    exit 1
fi

# Check if all arguments are provided
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "Error: Not all arguments are provided. Please specify the type, name, and output directory."
    exit 1
fi

type=$1
name=$2
output_dir=$3

# Create the output directory if it does not exist
mkdir -p "$output_dir"

# Download the data
if [ "$type" = "-d" ] || [ "$type" = "dataset" ]; then
    kaggle datasets download "$name" -p "$output_dir"
elif [ "$type" = "-c" ] || [ "$type" = "competition" ]; then
    kaggle competitions download "$name" -p "$output_dir"
else
    echo "Error: Invalid type. Please specify either 'd' or 'dataset' for dataset and 'c' or 'competition' for competition."
    exit 1
fi

# Unzip the data and remove the zip file
unzip "$output_dir"/*.zip -d "$output_dir" && rm "$output_dir"/*.zip

# Print a success message
echo "Successfully downloaded and unzipped the $type to $output_dir"

exit 0
