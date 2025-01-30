#!/bin/bash

sudo apt update
sudo apt install -y python3 python3-venv python3-pip

python3 -m venv hwsol
source hwsol/bin/activate

pip install numpy matplotlib scipy sympy pillow
