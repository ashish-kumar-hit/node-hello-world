# From base image node
FROM node:20

# app directory
WORKDIR /usr/src/app

# copy all the files from local file system to container file system
COPY package.json .

# Install all dependencies
RUN npm install

# Copy other files too
COPY ./ .

# Expose the port
EXPOSE 3000

# Command to run app when image inantiate
CMD [ "npm", "start"]