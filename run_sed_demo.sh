#!/bin/bash

PTH_DIR=${HOME}/pth_dir

# Log the start time
echo "Script started at $(date)" >> /home/ai4s/pisoundsensing/sed_demo.log

# Set the PYTHONPATH
cd /home/ai4s/pisoundsensing

# find the latest checkpoint file in PTH_DIR
pth_file=`ls -1 ${PTH_DIR}/*.pth | grep -v '/0_iterations.pth' | tail --lines=1`
echo infere by ${pth_file}

# Run sed_demo and log the output and errors
python3 -m sed_demo MODEL_PATH=${pth_file} # >> /home/ai4s/pisoundsensing/sed_demo.log 2>&1



# Then, you need to do the following
# Make the script executable:
#
# chmod +x ~/run_sed_demo.sh
# 
# Create a .desktop file that executes this script at system startup:
# 
# nano ~/.config/autostart/run_sed_demo.desktop
#
# Add the following lines to the file:
# 
#[Desktop Entry]
#Type=Application
#Name=Run sed_demo
#Exec=/home/ai4s/pisoundsensing/run_sed_demo.sh



