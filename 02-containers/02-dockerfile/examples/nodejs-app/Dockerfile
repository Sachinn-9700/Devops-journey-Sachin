# Use the official lightweight Node.js image.
FROM node:20-alpine
# Set the working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Install app dependencies
RUN npm install --production
# Copy the rest of the application code to the working directory
COPY . .
# Make port 4000 available to the world outside this container
EXPOSE 4000
# Command to run the application
CMD ["npm", "start"]
