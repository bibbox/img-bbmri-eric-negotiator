# img-bbmri-eric-negotiator

## IMPORTANT: This repository is deprecated and should not be used.
This is a docker image for the BBMRI-ERIC [negotiator v2](https://github.com/BBMRI-ERIC/negotiator-v2).

## Getting Started

The negotiator will start in developer mode which is ideal for testing and the database with dummy data.
Authentification is needed in developer mode. 

 * Build the docker image:
   * `docker build . -t bibbox/negotiator` 
 * Run the negotiator-app:
   * `docker run bibbox/negotiator` 


## Database Connection

The negotiator needs a connection to a PostgreSQL Database. The connection parameters can be set via the environment parameters:

 * DB_HOST: default=negotiator-db
 * DB_NAME: default=negotiator
 * DB_USER: default=negotiator
 * DB_PASSWORD: default=negotiator
 * DB_PORT: 5432

## Use Different Negotiator Version:

If you want to deploy an other negotiator version feel free to replace the `bbmri-negotiator.war` file with your version. To create a `bbmri-negotiator.war` download the [negotiator v2](https://github.com/BBMRI-ERIC/negotiator-v2) repository and compile it: 

`mvn clean compile war:war`

This will create a `bbmri-negotiator-*version*.war` in the `target` directory. 

