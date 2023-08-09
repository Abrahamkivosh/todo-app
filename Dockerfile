# Dockerfile for building the image for the django app
# It will be called by docker-compose.yml

# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000


# Define environment variable
ENV DJANGO_SETTINGS_MODULE=todos.settings

