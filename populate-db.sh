#!/bin/bash

#cd /code
/code/wait-for-it.sh localhost:3306
cd /code/oscar/database/mysql
# ./createdatabase_bc.sh oscar oscar oscar_mcmaster
./createdatabase_on.sh root liyi oscar_mcmaster

