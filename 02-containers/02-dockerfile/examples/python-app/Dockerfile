# Use the official lightweight Python image.
FROM python:3.11-alpine

# Set the working directory in the container
WORKDIR /src
# Copy the current directory contents into the container at /src
COPY . .
# Install Flask
RUN pip install flask
# Make port 4000 available to the world outside this container
EXPOSE 4000
#cmd to run the application
CMD ["python", "app.py"]
