#!/bin/bash

#install apt dependencies
sudo apt update
sudo apt install python3 python3-venv python3-pip -y

#create and activate venv
python3 -m venv venv
source venv/bin/activate

#install pip requirements
pip3 install -r requirements.txt

#export DATABASE_URI
export DATABASE_URI=sqlite:/// CREATE_SCHEMA=true

#run tests
python3.8 -m pytest
