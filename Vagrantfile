# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.define "swarm-master" do |node|
    node.vm.hostname = "swarm-master"
    node.vm.provision :shell, path: "bootstrap_ansible.sh"
    node.vm.network "public_network", bridge: "em1"
    node.vm.provision :shell, run: "always",
      inline: "ip -6 addr add 2001:660:7301:51::f090/64 dev eth1"
    #node.vm.network "forwarded_port", guest: 2376, host: 2376
    #node.vm.network "forwarded_port", guest: 2375, host: 2375
  end
  (1..3).each do |i|
    config.vm.define "swarm-node-0#{i}" do |node|
      node.vm.hostname = "swarm-node-0#{i}"
      node.vm.network "public_network", bridge: "em1"
      node.vm.provision :shell, run: "always",
        inline: "ip -6 addr add 2001:660:7301:51::f09#{i}/64 dev eth1"
    end
  end
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
end
