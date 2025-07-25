#!/bin/bash

# NCAA March Madness Predictor 2025 - Start Script

echo "🏀 Starting NCAA March Madness Predictor 2025..."
echo "📦 Installing dependencies..."

# Install dependencies if requirements.txt exists
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
fi

echo "🚀 Launching application..."

# Start the FastAPI application
if [ -f "launch_app.py" ]; then
    python3 launch_app.py
elif [ -f "main.py" ]; then
    uvicorn main:app --host 0.0.0.0 --port ${PORT:-8000}
else
    echo "❌ No application entry point found!"
    exit 1
fi 