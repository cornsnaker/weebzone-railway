#!/bin/bash

# 1. Install dependencies globally (skipping venv)
echo "Installing requirements..."
pip3 install -U -r requirements.txt

# 2. Force install uvloop (it seems to be missing or failing in the main list)
pip3 install uvloop

# 3. Update and Start the Bot
python3 config.py && python3 update.py && python3 -m bot
