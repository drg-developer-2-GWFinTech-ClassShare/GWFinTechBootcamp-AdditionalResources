#!/bin/bash

# 
# Update

# Create `pyvizenv` environment
conda create -y -n pyvizenv python=3.8 anaconda
conda activate pyvizenv


# Critical
conda install -y ipykernel
python -m ipykernel install --user --name pyvizenv




# Install dotenv
pip install python-dotenv

# Install needed anaconda packages
conda install -y -c anaconda nb_conda
conda install -y -c conda-forge nodejs
conda install -y -c pyviz holoviz
conda install -y -c pyviz hvplot
conda install -y -c plotly plotly
conda install -y -c pyviz panel
conda install -y -c pyviz pyviz
conda install -y -c conda-forge jupyterlab


# Jupyter Lab extensions for PyViz and Plotly Express
export NODE_OPTIONS=--max-old-space-size=4096

# Install the Jupyter Lab extensions
jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
jupyter labextension install jupyterlab-plotly@4.6.0 --no-build
jupyter labextension install plotlywidget@4.6.0 --no-build
jupyter labextension install @pyviz/jupyterlab_pyviz --no-build
#jupyter labextension install @pyviz/jupyterlab_pyviz

# Build the extensions
jupyter lab build

# Unset the node options
export NODE_OPTIONS=

# Verify packages are installed
pip list | grep python-dotenv
conda list nb_conda
conda list nodejs
conda list holoviz
conda list hvplot
conda list plotly
conda list panel
conda list pyviz
conda list jupyterlab



# TODO Move this to the base env and confirm it is copied to all other envs
pip install alpaca-trade-api
pip list | grep alpaca-trade-api


# TODO Install alpaca api stuff also (from pdf file).
# TODO Verify that ALL examples run correctly using one master environment.
