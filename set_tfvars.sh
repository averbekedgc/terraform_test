#!/bin/bash

# Get the current workspace
WORKSPACE=$(terraform workspace show)

# Define the path to the corresponding tfvars file
VARS_FILE="${WORKSPACE}/variables.tfvars"

# Check if the tfvars file exists
if [ ! -f "$VARS_FILE" ]; then
  echo "No tfvars file found for workspace: $WORKSPACE"
  exit 1
fi

# Remove existing terraform.tfvars symlink if it exists
if [ -L "terraform.tfvars" ]; then
  rm terraform.tfvars
fi

# Create a new symlink to the workspace-specific tfvars file
ln -s "$VARS_FILE" terraform.tfvars