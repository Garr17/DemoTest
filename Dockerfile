FROM node:latest

# Set the working directory in the container
WORKDIR  /src

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the app source code
COPY . .

# Build the React app for production
RUN npm run build

# Expose the port that your React app will run on
EXPOSE 3000

# Start the React app when the container starts
CMD [ "npm", "start" ]
