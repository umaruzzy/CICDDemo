# Use an official Node.js runtime as thse base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the applicationcode to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Commad to run the application
CMD ["npm", "start"]
