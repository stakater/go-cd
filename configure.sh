#!/bin/bash

#----path of the files to be configured----------------
templateFiles="gocd-data/conf/cruise-config.xml deployment/app-compose.yml"

#---install rpl package---
sudo apt-get install -y rpl

#------configure the specified files using configurations from config.properties file-------
while read line           
do           
    IFS='=' read -ra values <<< "$line"
    echo $line
    prop=${values[0]}
    value=${values[1]}
    rpl -i -e "$prop" "$value" $templateFiles
	     
done <config.properties   

#-----change the owner to root--------
sudo chown root:root gocd-data -R
