# Define use image
FROM node:erbium-alpine

# Specify work directory
WORKDIR '/usr/src/app'

# Install dependencies
RUN npm install -g @angular/cli@10.0.7

COPY package.json .
RUN npm install

# Copy files to work directory
COPY . .