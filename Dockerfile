# Define use image
FROM node:erbium-alpine

# Specify work directory
WORKDIR '/usr/src/app'

# Install dependencies
RUN npm install -g @angular/cli@10.0.7

COPY package.json .
RUN npm install

RUN apk update && apk add chromium chromium-chromedriver

ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1

# Copy files to work directory
COPY . .
