# Use an official Node.js runtime as a parent image
FROM node:16
# Set the working directory to /app
WORKDIR /app
# Copy the package.json file for the backend to the container
#COPY backend/package.json ./backend
# Install dependencies
#RUN cd backend && npm install
# Copy the backend and frontend source code to the container
COPY backend/ ./backend
COPY frontend/ ./frontend
RUN cd backend && npm install
# Expose port 8080 for the backend
EXPOSE 8080
EXPOSE 3000
# Set the environment variable for MongoDB connection URL
ENV MONGODB_URL=$(MONGODB_URL)
# Start the backend server
CMD ["node", "./backend/index.js"]
