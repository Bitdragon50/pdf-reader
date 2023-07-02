# Use the official Node.js 14 image as the base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production
RUN npm install tailwindcss
RUN npm install autoprefixer


# Copy the rest of the application files
COPY . .

# Build the application
RUN npm run build

EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
