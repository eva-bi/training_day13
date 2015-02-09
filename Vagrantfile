# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  Encoding.default_external = 'UTF-8'
  config.vm.box = "centos64_ja"
  config.vm.box_url = "https://dl.dropboxusercontent.com/u/3657281/centos64_ja.box"
  
  config.vm.define :training_day13 do |web|
    web.vm.network :private_network, ip: "192.168.33.113"
  end

  config.vm.synced_folder "../", "/var/www/html", :create => true, :owner=> 'vagrant', :group=>'vagrant', :mount_options => ['dmode=777,fmode=755']

  config.vm.provider :virtualbox do |vb|
    #vb.customize ["modifyvm", :id, "--memory", 1024]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
end