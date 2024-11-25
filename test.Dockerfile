# Dockerfile for tester container

# Use a lightweight Python image as the base to reduce image size
FROM python:3.9-slim 

# Install the 'requests' module, used for sending HTTP requests in the test script
RUN pip install requests

# Copy the test script from the local directory to the container's root directory
COPY test_script.py /test_script.py 

# Set the default command to run the test script when the container starts
CMD ["python", "/test_script.py"]
