# Alfresco Vagrant Web Box
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  attributes = JSON.parse(IO.read("packer-allinone.json"))["provisioners"][0]["json"]

  # Box env configuration
  config.vm.provider :virtualbox do |vb,override|
    override.vm.box             = "alfresco-allione"
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end

  config.vm.network :private_network, ip:  attributes["ip"]
  config.vm.hostname = attributes["hostname"]
  config.vm.provision :hosts
end