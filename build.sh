#! /bin/bash

# Echo this is the build script
echo "Building a webpage..."

# Declare and initialize values
SERVER_NAME=$HOSTNAME
 ${SERVER_NAME} 1 >> /web/index.html 

# Replace values in index.html
## TODO: Replace {SEVER_NAME} with $SEVER_NAME
