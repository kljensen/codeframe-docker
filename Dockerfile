FROM node:22.8.0-alpine3.19

# Install unzip utility
RUN apk add --no-cache unzip

# Download codeframe from GitHub
RUN wget https://github.com/thesephist/codeframe/archive/4c44fbb5a0e0bde45983b663db9e893fe3c73ea8.zip && \
    unzip 4c44fbb5a0e0bde45983b663db9e893fe3c73ea8.zip && \
    rm 4c44fbb5a0e0bde45983b663db9e893fe3c73ea8.zip && \
    mv codeframe-4c44fbb5a0e0bde45983b663db9e893fe3c73ea8 codeframe

# Set working directory
WORKDIR /codeframe

# Install dependencies
RUN npm install

ENTRYPOINT [ "npm", "start" ]