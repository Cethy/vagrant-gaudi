# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"

  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # config.vm.network "private_network", ip: "192.168.33.10"
 
  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.provider "virtualbox" do |vb|
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end

  # puppet dependencies
  config.vm.provision :shell do |shell|
     shell.inline = "if puppet module list | grep garethr-docker > /dev/null; then puppet module upgrade garethr-docker; else puppet module install garethr-docker; fi"
  end

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "init.pp"

    puppet.module_path = 'puppet/modules'

    #puppet.options="--verbose --debug"
  end
end
