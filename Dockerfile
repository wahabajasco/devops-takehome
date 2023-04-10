# Use an official Node.js runtime as a parent image
FROM node:16
# Set the working directory to /app
WORKDIR /app
# Create backend folder in the working directory
RUN mkdir -p backend
# Copy the package.json file from the backend folder to the container backend
COPY backend/package.json ./backend
# Install dependencies
RUN cd backend && npm install
# Copy all the source code to the container image
COPY . .
## Expose port 8080
EXPOSE 8080
# Set the environment variable for MongoDB connection URL
ENV MONGODB_URL=$(MONGODB_URL)
# Start the backend server
CMD ["node", "./backend/index.js"]
