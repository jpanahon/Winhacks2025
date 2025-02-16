# Use Node.js as the base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Build the SvelteKit app
RUN npm run build 

# Expose the port (default for SvelteKit)
EXPOSE 5173

# Start the SvelteKit app
RUN npm run dev -- -p 5173