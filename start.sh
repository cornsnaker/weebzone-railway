# Check if the .venv folder exists
if [ ! -d ".venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv .venv
fi

# Activate the environment
source .venv/bin/activate

# Install dependencies (essential because it's a fresh environment)
echo "Installing requirements..."
pip install -r requirements.txt

# Run your bot commands
python3 config.py && python3 update.py && python3 -m bot
