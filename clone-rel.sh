#!/bin/bash
echo "Cloning oscar from bitbucket"
if [ -d "./oscar" ]; then
    echo "already cloned"
else
    git clone --depth 1 --single-branch --branch master https://bitbucket.org/oscaremr/oscar.git oscar
fi


