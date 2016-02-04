#!/bin/bash

#----path of the files to be configured----------------
configFile="config.properties"

#---install rpl package---
sudo apt-get install -y rpl

if [ "$1" = "-gitRepo" ] && [ -n "$2" ] && [ "$3" = "-branch" ] && [ -n "$4" ] && [ "$5" = "-warFilePath" ] && [ -n "$6" ] && [ "$7" = "-port" ] && [ -n "$8" ]; then

  rpl -i -e "git-url-value" "$2" $configFile
  rpl -i -e "git-branch-value" "$4" $configFile
  rpl -i -e "war-file-path-value" "$6" $configFile
  rpl -i -e "app-public-port-value" "$8" $configFile

else
 echo "Please specify arguments correctly like below:"
 echo "./update-config.sh -gitRepo repo -branch develop -warFilePath build/libs/app.war -port 9090"
 echo "please provide the arguments in exact specified order"
fi;
