#!/bin/bash
# birthday_launch.sh
# Production‑ready launch script for the AI System.

set -e

status() {
    echo "==> $1"
}

echo "🎂 HAPPY BIRTHDAY! INITIALIZING AI SYSTEM... 🚀"
echo ""

VENV_DIR="venv"

if [ ! -d "$VENV_DIR" ]; then
    status "Creating Python virtual environment in '$VENV_DIR'..."
    python3 -m venv "$VENV_DIR"
else
    status "Virtual environment '$VENV_DIR' already exists."
fi

status "Activating virtual environment..."
source "$VENV_DIR/bin/activate"

status "Upgrading pip..."
pip install --upgrade pip

REQ_FILE="backend/requirements.txt"
if [ ! -f "$REQ_FILE" ]; then
    REQ_FILE="requirements.txt"
fi

if [ -f "$REQ_FILE" ]; then
    status "Installing dependencies from '$REQ_FILE'..."
    pip install -r "$REQ_FILE"
else
    echo "Error: Requirements file not found!"
    exit 1
fi

status "Starting FastAPI server..."
python -m uvicorn backend.app.main:app --host 0.0.0.0 --port 8000

