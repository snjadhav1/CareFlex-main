# Use official Node.js LTS image
FROM node:18-slim

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5500

# Command to run the application
CMD ["nodemon app.js"]
