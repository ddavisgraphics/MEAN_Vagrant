# VAGRANT MEAN STACK

This resource is being created as a base for NodeJS projects, this box has been steup to acclimate the MEAN-Stack approach to javascript web development and is free to adapt for your projects and needs.  

Has not been tested on windows, but the overall result should be the same.  


## Dependencies 
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Run through both of theses installs.  
   
## Getting Started
* Download this repo and cd into the directory you have stored it. 
* In the terminal ```vagrant up``` this will start a download and begin provisioning your virtual box.  
* Once the terminal has finished (it may take some time) type ```vagrant ssh``` this will put you inside the virtual box and allow you to edit and install from that command prompt.  
* Lets check to be sure everything is there.
	* ```node -v```  this should show you a version of node   -- example: v0.12.4  
	* ```npm -v ```  This should allow you to check the version of your npm. 
	* ```sudo npm install npm -g``` this will check that npm is updated.
	* Next we will use yeoman to install meanjs and create the application structure.  
	* ```cd /vagrant ``` to get into the local directory. 
	* ```yo meanjs``` this will build all the scaffolds and create app structures.  

### Starting Up
* ```vagrant up``` starts the virtualbox 
* ```vagrant ssh``` to get into the box 
* ```grunt``` -  starts the application and runs on localhost:3000

### Shutting Down 
* This is from inside your vagrant box already
* ```control c``` stops the js server 
* ```vagrant suspend``` stops the virtual box  


**We are ready to start development!**
 

