# MongoDB image

[![hope/mongodb](https://img.shields.io/badge/docker-hope/mongodb-brightgreen.svg)](https://hub.docker.com/r/hope/mongodb/)

Single instance of MongoDB to use as microservice datastore. Data files are stored in data volume **/data/db**.

## Build

    docker build -t hope/mongodb .
    
## Run
    
    docker run -d --name=mongo -p 27017:27017 hope/mongodb
