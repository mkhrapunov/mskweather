# Base image
FROM nodered/node-red-docker

# Install dashboard
RUN npm i node-red-dashboard

# Copy settings with admin auth
COPY ./settings.js /data/settings.js

# Copy weather flow
COPY ./flows.json /data/flows.json