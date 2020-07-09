# use the latest LTS (long term support) version 12 of node available from the Docker Hub:
FROM node:12

# create a directory to hold the application code inside the image, this will be the working directory for your application:
WORKDIR /urs/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=production
RUN npm install

# Bundle app source
COPY . .

# Your app binds to port 8080 so you'll use the EXPOSE instruction to have it mapped by the docker daemon:
EXPOSE 8080

CMD [ "node", "index.js" ]
