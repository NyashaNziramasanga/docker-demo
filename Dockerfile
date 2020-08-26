# Start from base Node image 
FROM node:12

# Add app sorcecode into the directory
WORKDIR /app

# Copy cached node_modules into the WORKDIR
COPY package*.json ./

# Open a terminal session and run npm install (Uses Shell form)
RUN npm install

# Copy all locla files to the current WORKDIR
COPY . .

# Set an environment variable
ENV PORT=8080

EXPOSE 8080

# Tells the container how to run the application (Uses Exec form)
CMD [ "npm", "start" ]