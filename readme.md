# Dockerized OSCAR EMR
OSCAR EMR is an open-source Electronic Medical Record (EMR) for the Canadian family physicians. This is a script to deploy master branch from OSCAR repository on a docker container. This pulls a fork of OSCAR at [https://github.com/E-Health/oscar.](https://github.com/E-Health/oscar) The official repository is [here.](https://bitbucket.org/oscaremr/oscar.git)

This is an experimental application and is not for production use.

## Prerequisites
* GIT
* Maven
* Docker
* Docker-compose
* USE THE LATEST DATABASE DUMP. You may have to add all update sql too.  

## How to Use this
* Just clone this repo, add database dump (Oscar15ON.sql) to dbdump and ./install.sh
* Access oscar at http://localhost:8091/oscar_mcmaster/

## Using external database
* Change the setting in docker-compose.yml

## What the script does
* Checks out master branch from OSCAR repo.
* Compile with maven.
* Create Docker containers.
* Deploy the database and application in the containers.
* If you want to use an existing database, add it in *docker-compose.yml*

## Author
* [Bell Eapen](http://nuchange.ca)
