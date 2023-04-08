# Use an official Node.js runtime as a parent image
FROM node:16
# Set the working directory to /app
WORKDIR /app
# Copy the package.json file to the container
COPY backend/package.json ./
# Install dependencies
RUN npm install
# Copy the backend source code to the container
COPY backend/ ./
# Expose port 8080 for the backend
EXPOSE 8080
# Set the environment variable for MongoDB connection URL
ENV MONGODB_URL
# Start the backend server
CMD ["node index.js"]
