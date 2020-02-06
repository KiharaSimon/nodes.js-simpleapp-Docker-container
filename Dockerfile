#Specify a base image
FROM node:alpine

WORKDIR /usr/app
#Install all the dependencies of a project
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Command associated

CMD ["npm", "start"]