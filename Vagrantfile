# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define :clienteUbuntu do |clienteUbuntu|
    clienteUbuntu.vm.box = "bento/ubuntu-22.04"
    clienteUbuntu.vm.network :private_network, ip: "192.168.100.4"
    clienteUbuntu.vm.hostname = "clienteUbuntu"
    clienteUbuntu.vm.provision "shell", path: "AprovisionamientoConsul.sh"
  end

  config.vm.define :servidorUbuntu do |servidorUbuntu|
    servidorUbuntu.vm.box = "bento/ubuntu-22.04"
    servidorUbuntu.vm.network :private_network, ip: "192.168.100.5"
    servidorUbuntu.vm.hostname = "servidorUbuntu"
    servidorUbuntu.vm.provision "shell", path: "AprovisionamientoConsulServer.sh"
  end
  config.vm.define :servidorProxy do |servidorProxy|
    servidorProxy.vm.box = "bento/ubuntu-22.04"
    servidorProxy.vm.network :private_network, ip: "192.168.100.6"
    servidorProxy.vm.hostname = "servidorProxy"
    servidorProxy.vm.provision "shell", path: "AprovisionamientoProxy.sh"
  end
end

