# Use the official Python image as base
FROM python:3

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 5000 to the outside world
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Command to run the application
CMD ["flask", "run", "--host=0.0.0.0"]
