#!/bin/bash

# Update package list
sudo apt update

# Install Python and essential tools
sudo apt install -y python3 python3-venv python3-pip

# Install necessary Python packages
pip install numpy matplotlib scipy sympy pillow jupyterlab nbconvert

# Install Pandoc for document conversions
sudo apt install -y pandoc

# Install TeX Live with XeTeX for PDF export
sudo apt install -y texlive-xetex texlive-fonts-recommended texlive-plain-generic
