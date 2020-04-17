
#! /bin/bash

## This script will test if my build was successfull


# Define path for release ---> index.html (release)
  #string path = "index.html" 
  #filename=web/index.html
 if[[ ! -e /web/index.html ]] ;
 then 
exit 3
 else 
   echo "build was successfull. Test passed."
exit 0
fi
