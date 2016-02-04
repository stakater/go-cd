#!/bin/bash

#----path of the files to be configured----------------
configFile="config.properties"

#---install rpl package---
sudo apt-get install -y rpl

if [ "$1" = "-gitRepo" ] && [ -n "$2" ] && [ "$3" = "-branch" ] && [ -n "$4" ] && [ "$5" = "-warFilePath" ] && [ -n "$6" ]; then

  rpl -i -e "git-url-value" "$2" $configFile
  rpl -i -e "git-branch-value" "$4" $configFile
  rpl -i -e "war-file-path-value" "$6" $configFile
  
  if [ -n "$8" ] && [ "$7" = "-gradleRoot" ]; then 
  	rpl -i -e "gradle-root-value" "$8" $configFile
  else
  	rpl -i -e "gradle-root-value" " " $configFile	
  fi;

else
 echo "Please specify arguments correctly like below:"
 echo "./update-config.sh -gitRepo repo -branch develop -warFilePath build/libs/app.war -gradleRoot core"
 echo "gradleRoot is an optional parameter(leave this if build.gradle is in project root directory, else specify relative path"
 echo "please provide the arguments in exact specified order"
fi;
