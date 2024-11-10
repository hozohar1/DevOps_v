# Dockerfile for tester container

# Use a lightweight Python image as the base
FROM python:3.9-slim

# Install requests module
RUN pip install requests

# Copy the test script into the container
COPY test_script.py /test_script.py

# Run the test script when the container starts
CMD ["python", "/test_script.py"]
