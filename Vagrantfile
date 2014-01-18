# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_plugin "vagrant-omnibus"
Vagrant.require_plugin "vagrant-vbguest"
Vagrant.require_plugin "vagrant-berkshelf"

Vagrant.configure("2") do |config|
  config.vm.hostname = "vm-berkshelf"
  config.vm.box = "ubuntu"
  config.vm.network :private_network, ip: "33.33.33.12"
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password   => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password   => 'replpass'
      }
    }

    chef.run_list = [
      "recipe[vm::host_kvm]",
      "recipe[vm::host_lxc]"
    ]
  end
end
