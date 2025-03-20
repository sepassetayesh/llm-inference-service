# Step 1: Use the official Python 3.12-slim image as the base image
FROM python:3.12-slim

# Step 2: Set the working directory inside the container to /app
WORKDIR /app

# Step 3: Copy the requirements.txt file from the host machine to the container's working directory
COPY requirements.txt .

# Step 4: Install Python dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the app.py file from the host machine to the container's working directory
COPY app.py .

# Step 6: Set an environment variable inside the container for the CSV file
ENV METRICS_LOG_FILE=docker_system_inference_metrics.csv

# Step 7: Expose port 5000 to allow external access to the application running inside the container
EXPOSE 5000

# Step 8: Specify the command to run the application when the container starts
CMD ["python", "app.py"]