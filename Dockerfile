#base image
FROM node:18.20.3-alpine

#working directory
WORKDIR /app

#copy package.json file
# COPY package.json .
# COPY package*.json ./
COPY frontend/package*.json ./

#install dependencies
RUN npm install

#copy the files
# COPY . .
COPY frontend/ ./

#run the app
# CMD [ "npm" , "start"]
EXPOSE 3000

#start react
CMD [ "npm","start"]