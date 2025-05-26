# Use an official Node.js runtime as the base image
FROM node:16-alpine   
FROM node:18-alpine  
FROM node:20-alpine   

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all application files
COPY . .

# Expose port 3000 (the port your app runs on)
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]