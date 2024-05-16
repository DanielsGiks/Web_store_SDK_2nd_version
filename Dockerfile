# Use the official Node.js image as the base image
FROM node:18

RUN npm -y -g install serve

# Set the working directory in the container
WORKDIR /app/

# Copy the application files into the working directory
COPY . .

# Install the application dependencies
EXPOSE 8080

# Define the entry point for the container
CMD ["npm", "start"]