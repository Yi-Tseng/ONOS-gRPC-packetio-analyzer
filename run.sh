#!/bin/bash

if [ ! -d "venv" ]; then
  python3 -m venv venv
  pip3 install -r requirements.txt
fi

source venv/bin/activate && jupyter nbconvert --to python --execute analysis.ipynb && deactivate

echo "Done, check result.txt"
