# Dockerized OSCAR EMR
OSCAR EMR is an open-source Electronic Medical Record (EMR) for the Canadian family physicians. This is a script to deploy master branch from OSCAR repository on a docker container. This pulls a fork of OSCAR at [https://github.com/E-Health/oscar.](https://github.com/E-Health/oscar) The official repository is [here.](https://bitbucket.org/oscaremr/oscar.git)

This is an experimental application and is not for production use.

## What's new in V3.0 (Nov 2019)
* builder container (No local java/maven needed)
* Database is created from repo. (No sql needed)
### Update 
* Added an install script that downloads pre-compiled war from jenkins to the docker container
* This includes drugref (Thanks [@countable](https://github.com/countable))
* Useful for testing: Use ./install-rel.sh 

## Prerequisites
* GIT
* Docker
* Docker-compose

## How to Use this
* Just clone this repo and ./install.sh
* Access oscar at http://localhost:8091/oscar_mcmaster/

## Using external database
* Change the setting in docker-compose.yml

## What the script does
* Checks out master branch from OSCAR repo.
* Compile with maven.
* Create Docker containers.
* Deploy the database and application in the containers.
* If you want to use an existing database, add it in *docker-compose.yml*

## Contributors
* [Bell Eapen](http://nuchange.ca)
* Thanks to [@countable](https://github.com/countable) for improving the database deployment.
