# Use slim base image for efficiency
FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY src/ .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "main.py"]
