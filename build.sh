#! /bin/bash

# Echo this is the build script
echo "Building a webpage..."

# Declare and initialize values
 export  SERVER_NAME=${HOSTNAME}
 sed -i "s/{/\${/g" web/index.html
envsubst '$TIMESTAMP $GIT_REPO $GIT_BRANCH $AZURE_VARIABLE $USER $PWD $SERVER_NAME $TIMESTAMP' > web/newIndex.html < web/index.html 
#echo ${SERVER_NAME} 1 > web/index.html

#echo "vso[task.setvariable variable=${HOSTNAME};]SERVER_NAME"

#sudo chmod -R u+rwx /web/index.html
#echo ${PWD} 1 > web/index.html
 #./web/index.html    ${SERVER_NAME}  

# Replace values in index.html
## TODO: Replace {SEVER_NAME} with $SEVER_NAME
