# Use an official Node.js runtime as the base image
FROM node:16.19.0

FROM tippecanoe:latest

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Install tippecanoe
RUN npm install -g tippecanoe

# Copy the rest of the application code
COPY . .

# Run the command to execute your code when the container starts
CMD ["npm", "run", "start"]
