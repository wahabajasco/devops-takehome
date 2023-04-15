# Use an official Node.js runtime as a parent image
FROM node:16
# Set the working directory to /usr/src/app
WORKDIR /usr/src/app
# Create backend folder in the working directory
RUN mkdir -p backend
# Copy the package.json file from the backend folder to the container backend
COPY backend/package.json ./backend
# Install dependencies
WORKDIR /usr/src/app/backend
RUN npm install
# Set the working directory back to /usr/src/app
WORKDIR /usr/src/app
# Copy all the source code to the container image
COPY . .
# Set the backend URL environment variable
ENV BACKEND_URL="http://localhost:3000"
# Expose port 3000 for the backend
EXPOSE 3000
## Expose port 8080
#EXPOSE 8080
# Set the environment variable for MongoDB connection URL
ENV MONGODB_URL=$(MONGODB_URL)
# Start the backend server
CMD ["node", "./backend/index.js"]

