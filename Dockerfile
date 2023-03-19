# Use the official Node.js base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the project files to the working directory
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Build the app for production
RUN npm run build

# Start the production server
CMD ["npm", "run", "start"]
