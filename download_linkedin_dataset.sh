#!/bin/bash
# download_linkedin_dataset.sh
# Downloads the "1.3M LinkedIn Jobs and Skills 2024" dataset from Kaggle
# and extracts it into the ./data directory.

# Exit on error
set -e

# Create data directory if it doesn't exist
mkdir -p data

# Download dataset from Kaggle
echo "Downloading dataset from Kaggle..."
kaggle datasets download -d asaniczka/1-3m-linkedin-jobs-and-skills-2024 -p data

# Unzip dataset into data directory
echo "Unzipping dataset..."
unzip -o data/1-3m-linkedin-jobs-and-skills-2024.zip -d data

# Remove the zip file to save space
rm data/1-3m-linkedin-jobs-and-skills-2024.zip

echo "Dataset downloaded and extracted into ./data"