### Creating a docker file. ###
#Long term support version.
FROM node:12.16.3
#Tells docker to create this directory and have all subsequent commands use this directory.
WORKDIR /code
#Environment variable is accessed by any process running the image.
ENV PORT 80
COPY package.json /code/package.json
RUN npm install
COPY . /code
CMD [ "node", "src/server.js" ]

