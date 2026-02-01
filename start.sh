#!/bin/bash

# 1. Install standard requirements
echo "Installing requirements..."
pip3 install -U -r requirements.txt

# 2. Install missing manual dependencies (uvloop and httpx)
echo "Installing missing modules..."
pip3 install uvloop httpx

# 3. Start the bot (No .venv activation needed)
python3 config.py && python3 update.py && python3 -m bot
