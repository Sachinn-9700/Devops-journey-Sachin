# Use an official Python runtime as a parent image
FROM python:3.11.14-alpine3.23
# Set the working directory in the container
WORKDIR /src
# Copy the current directory contents into the container at /src
COPY . .
# Install any needed packages specified in requirements.txt
RUN pip install flask   
# Make port 5000 available to the world outside this container
EXPOSE 5000
# Define environment variable
CMD ["python", "server.py"]