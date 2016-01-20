# GO-CD Template

Stakater provides templatized go cd configurations.

### How to use this project ###
1. clone this repo 
2. Edit the config.properties file
  * provide the git url of your remote repo for which you need to setup go cd contineous integration
  * specify the git branch
  * specify the location of war file inside your project like (e.g build/libs/stakater.war) build folder will be inside your project root directory 
  * specify the app-compose.yml file absolute path, app-compose.yml is in the root directory of this repo (go-cd), and you will specify the absolute url of the file according to where you have cloned this repo
  * specify the absolute path of Dockerfile-run which is also in the root directory of this (go-cd) repo.
  * specify the public ip on which your application will be accessible after deployment.
3. run the configure.sh script using following command
  <br/>     <i>./configure.sh</i>
  <br/> you may need to change the permission of this file to make it executeable using following command
  <br/>     <i>sudo chmod +x configure.sh</i>
