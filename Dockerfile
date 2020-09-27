FROM node:12

# Set the working directory.
WORKDIR /usr/src/app

# Copy the file from your host to your current location.
COPY package*.json ./

# Run the command inside your image filesystem.
RUN npm install

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Port the container is listening on at runtime.
EXPOSE 3000

# Run the command inside your image filesystem.
Run npm test

# Run the specified command within the container.
CMD [ "npm", "start" ]
