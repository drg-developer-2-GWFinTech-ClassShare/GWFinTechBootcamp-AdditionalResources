#!/bin/bash

# Update
conda update -y conda
conda update -y anaconda

# Create `dev` environment
conda create -y -n dev python=3.8 anaconda
conda activate dev
conda init bash

# Verify packages are installed
conda list | grep numpy
conda list | grep pandas
conda list | grep matplotlib



TODO MOVE export CODE=/c/Code
export GWCODE=/c/Code/Education/GWFinTech2020