
#! /bin/bash

## This script will test if my build was successfull


# Define path for release ---> index.html (release)
string path = index.html 
 if(!File.Exists(path))
exit 3
 else 
   echo "build was successfull. Test passed."
exit 0