# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Increase the memory
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/precise64"
  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.network :forwarded_port, guest: 80, host: 2000
  config.vm.network :forwarded_port, guest: 3000, host:3000
  #config.vm.network :forwarded_port, guest: 22, host: 2222


  config.vm.provision "shell", path: "bootstrap.sh"

end