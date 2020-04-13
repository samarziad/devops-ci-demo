#! /bin/bash

# Echo this is the build script
echo "Building a webpage..."

# Declare and initialize values
SERVER_NAME=$HOSTNAME
echo ${SERVER_NAME} 1 > web/index.html
#sudo chmod -R u+rwx /web/index.html
#echo ${PWD} 1 > web/index.html
 #./web/index.html    ${SERVER_NAME}  

# Replace values in index.html
## TODO: Replace {SEVER_NAME} with $SEVER_NAME
