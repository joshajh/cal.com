# Use the official Node.js image.
# https://hub.docker.com/_/node
FROM node:18

# Create and change to the app directory.
WORKDIR /cal.com

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure both package.json AND package-lock.json are copied.
COPY package*.json ./

# Install production dependencies.
RUN yarn

# Copy local code to the container image.
COPY . .

# Run the web service on container startup.
CMD [ "yarn", "build" ]
CMD [ "yarn", "start" ]
