# To be used with Google Cloud Build. You cannot run this Dockerfile alone because /workspace doesn't exist.
FROM node:lts-alpine

RUN mkdir /app

#This COPY is important. The Run Command cannot access GCP Build dir or volumes
COPY . /app

RUN rm -rf /app/Dockerfile

WORKDIR /app

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]
