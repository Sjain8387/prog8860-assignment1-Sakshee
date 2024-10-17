# Use an official Node.js image from Docker Hub
FROM node:14

# Create a directory in the container for the app
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the app's code into the container
COPY . .

# Expose port 3000 (the port our app will run on)
EXPOSE 3000

# Command to start the app
CMD ["node", "index.js"]
