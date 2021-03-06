### Creating a docker file. ###
#Long term support version.
FROM node:12.16.3
#Tells docker to create this directory and have all subsequent commands use this directory.
WORKDIR /code
#Environment variable is accessed by any process running the image.
ENV PORT 80
#Package.json tells node what modules we want to use and what the requirements are.
COPY package.json /code/package.json
#docker executes npm install. Anything after RUN is ran.
RUN npm install
#Copy will take everything in the current directory and put it in my image.
COPY . /code
#CMD is used to give the engine the default command it should run when it starts the container.
CMD [ "node", "src/server.js" ]

