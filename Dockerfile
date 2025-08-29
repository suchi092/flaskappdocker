# Base image
FROM python:3.10-slim

# Set working dir
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy source code
COPY . .

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]
