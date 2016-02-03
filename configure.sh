#!/bin/bash

#----path of the files to be configured----------------
templateFiles="gocd-data/conf/cruise-config.xml app-compose.yml"

#---install rpl package---
sudo apt-get install -y rpl

#------remove the changes in template files if any--------------------
git checkout $templateFiles

#------configure the specified files using configurations from config.properties file-------
while read line           
do           
    IFS='=' read -ra values <<< "$line"
    prop=${values[0]}
    value=${values[1]}
    rpl -i -e "$prop" "$value" $templateFiles
	     
done <config.properties   
