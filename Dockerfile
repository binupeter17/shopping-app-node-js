FROM node:14-alpine

# Set up working directory
WORKDIR /var/nodejsapp

# Copy package.json and package-lock.json for npm install
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the application runs on
EXPOSE 5000

# Start the application
CMD ["node", "app.js"]

