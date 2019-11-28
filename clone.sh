#!/bin/bash
echo "Cloning oscar:"
if [ -d "./oscar" ]; then
    echo "already cloned"
else
    git clone --depth 1 --single-branch --branch feature/Container-1 https://github.com/E-Health/oscar.git oscar
fi


