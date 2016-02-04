# GO-CD Template

Stakater provides templatized go cd configurations.

### How to use this project ###
1. clone this repo 
2. Edit the config.properties file
  * provide the git url of your remote repo for which you need to setup go cd contineous integration
  * specify the git branch
  * specify the build.gradle path, if your build.gradle path is your project root directory then put a space in gradle-root value.
3. run the configure.sh script using following command
  <br/>     <i>./configure.sh</i>
  <br/> you may need to change the permission of this file to make it executeable using following command
  <br/>     <i>sudo chmod +x configure.sh</i>
