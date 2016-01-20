#!/bin/bash

#----path of the files to be configured----------------
templateFiles="gocd-data/conf/cruise-config.xml app-compose.yml"

#---install rpl package if not already installed---
cmd="whereis rpl"
rplPackage=$(bash -c "$cmd")
IFS=':' read -ra rplLocation <<< "$rplPackage"

if [ -n "${rplLocation[1]}"  ]
then
  sudo apt-get install -y rpl
fi 

#------configure the specified files using configurations from config.properties file-------
while read line           
do           
    IFS='=' read -ra values <<< "$line"
    prop=${values[0]}
    value=${values[1]}
    rpl -i -e "$prop" "$value" $templateFiles
	     
done <config.properties   
