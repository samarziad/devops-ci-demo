#! /bin/bash

# Echo this is the build script
echo "Building a webpage..."

# Declare and initialize values
SERVER_NAME=${HOSTNAME}
USER=${USER}
#TIMESTAMP=$((TeamProject)_$(Build.DefinitionName)_$(SourceBranchName)_$(Date:yyyyMMdd)$(Rev:.r))


DATE=$(date)
GIT_REPO=$(git remote -v | head -n1 | awk '{print $2}'| sed -e 's,.*:\(.*/\)\?,,' -e 's/\.git$//')
#GIT_REPO=$(git remote show origin -n | grep "Fetch URL:" | sed -E "s#^.*/(.*)$#\1#" | sed "s#.git$##")
Pwd=$(pwd)
#echo "##vso[task.setvariable variable=BUILD_DATE;]$DATE"
branch_name=$(git branch)
AZURE_VARIABLE=$1+$2

 sed -i "s/SERVER_NAME/${SERVER_NAME}/g"  web/index.html
 sed -i "s/{USER}/${USER}/g"  web/index.html
 sed -i "s/TIMESTAMP/${DATE}/g"  web/index.html
 sed -i "s/{GIT_REPO}/$GIT_REPO/g"  web/index.html
 sed -i "s~{PWD}~$Pwd~g"  web/index.html 
 sed -i "s/{GIT_BRANCH}/$branch_name/g"  web/index.html
 sed -i "s~(AZURE_VARIABLE)~$AZURE_VARIABLE~g"  web/index.html
#envsubst '$SERVER_NAME' > web/newIndex.html  
#echo ${SERVER_NAME} 1 > web/index.html

#echo "vso[task.setvariable variable=${HOSTNAME};]SERVER_NAME"

#sudo chmod -R u+rwx /web/index.html
#echo ${PWD} 1 > web/index.html
 #./web/index.html    ${SERVER_NAME}  

# Replace values in index.html
## TODO: Replace {SEVER_NAME} with $SEVER_NAME
