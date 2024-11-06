# Dockerfile for tester container
FROM python:3.9-slim

# התקנת המודול requests
RUN pip install requests

# העתקת סקריפט הבדיקה
COPY test_script.py /test_script.py

# הרצת הסקריפט בעת העלאת הקונטיינר
CMD ["python", "/test_script.py"]
