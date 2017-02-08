#pp -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    # General
    #config.vm.box = "ubuntu-12.04-amd64-vbox.box"
    config.vm.box = "ubuntu-14.04-amd64-vbox.box"
    #config.vm.box = "ubuntu/xenial64"

    config.vm.provider :virtualbox do |vb|
        vb.gui = false
        vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"] # change me !
    end

    config.berkshelf.enabled = true
    config.omnibus.chef_version = :latest

    config.vm.define 'ntpdate' do |node|
        node.vm.box = 'ubuntu-12.04-amd64-vbox.box'
        node.vm.hostname = 'ntpdate'
        node.vm.network :private_network, ip: '10.0.33.17'
        node.vm.provision :shell, :inline => 'apt-get update; apt-get install ntp -y'
        node.vm.provision :chef_solo do |chef|
            chef.log_level = :debug
            chef.json ={
              :ntpdate => {
                :enable => true,
                :ntp_servers => %w(ntp1.hetzner.de ntp2.hetzner.de),
                :crontab => {
                    :comment => 'This cron syncs the time on Sundays mornings.',
                    :minute  => '0',
                    :hour    => '6',
                    :day     => '7'
                }
              }
            }
            chef.run_list = %w(ntpdate)
        end
    end
end 
#- end of ALL declarations -
