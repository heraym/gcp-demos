# Use an official Node runtime as the parent image
FROM node:lts
# Set the working directory in the container to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
ADD . /app
COPY package.json package*.json ./
RUN npm install
# Run app.js using node when the container launches
CMD ["node", "index.js"]
