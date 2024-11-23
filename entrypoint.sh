#!/bin/bash
echo "Running tests..."
pytest /app --maxfail=5 --disable-warnings --verbose
if [ $? -ne 0 ]; then
    echo "Tests failed. Exiting."
    exit 1
fi
echo "Tests passed. Starting application..."
python3 app.py