# Pyviz Setup Guide

This directory contains instructions for setting up Pyviz.

## Troubleshooting Tips

### Warning: kernel_spec_manager_class

The following warning involving ```kernel_spec_manager_class``` may occur during the ```jupyter labextension install``` steps. This is a warning and not an error.

![kernel_spec_manager_class warning](Images/kernel_spec_manager_class__Warning.png "kernel_spec_manager_class warning")

The `pyviz-bash-setup.sh` script has been tested under Git Bash on Windows, and has not been tested but should run in Terminal on Mac.

# Troubleshooting

## Unable to run notebook

Make sure to change the kernel in the upper right of the Python notebook to pyvizenv.
[TODO image]

## Slider inop

(these do not fix the problem)
jupyter nbextension enable --py widgetsnbextension
jupyter nbextension enable --sys-prefix --py

