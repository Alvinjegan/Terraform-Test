# Base lightweight image with Python
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements if your script needs dependencies
COPY . .

RUN pip install flask

# Default command (can be overridden in Jenkins pipeline)
CMD ["python", "app.py"]
