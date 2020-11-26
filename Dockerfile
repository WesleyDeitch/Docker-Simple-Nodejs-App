# Getting the base image
FROM node

# Setting the default work directory, all subsequent commands will
# be done within the '/app' folder
WORKDIR /app

# Take all the files in folder and place it in the /app folder
COPY package.json /app

# Installing all of the dependencies
RUN npm install

COPY . /app

# Lets out local machine be able to access the server running the docker container
EXPOSE 80

# Should be the last instruction in your Dockerfile
# This will be run when a container is created as the default command
CMD ["node", "server.js"]