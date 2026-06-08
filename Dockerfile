FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "index"]


# A Dockerfile is used to build a Docker image. It contains instructions such as:

# Which base image to use
# What files to copy
# What commands to run during the build
# Which port to expose
# What command to execute when the container starts



# A docker-compose.yml (or compose.yaml) file is used to define and run one or more containers/services together. It specifies:

# Which images to use (or how to build them)
# Environment variables
# Networks
# Volumes
# Port mappings
# Dependencies between services

# What is base image in dockerfile?

# A base image is an existing Docker image (often from Docker Hub or a private registry) that serves as the foundation for building a new image. Docker pulls the base image if needed, then adds my application's layers on top of it to create a new image. Containers are later created and run from that final image.