Vagrant.configure("2") do |config|
  config.vm.define "db01" do |node|
    node.vm.box = "berchev/redis64"
    node.vm.hostname = "db01"
    node.vm.network "private_network", ip: "192.168.56.11"
  end 
 
  config.vm.define "app01" do |node|
    node.vm.box = "berchev/xenial64"
    node.vm.hostname = "app01"
    node.vm.network "private_network", ip: "192.168.56.21"
    node.vm.provision :shell, path: "scripts/provision.sh"
  end

end
