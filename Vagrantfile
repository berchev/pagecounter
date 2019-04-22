Vagrant.configure("2") do |config|
  config.vm.define vm_name="app01" do |node|
    node.vm.box = "berchev/nginx64"
    node.vm.hostname = vm_name
    node.vm.network "private_network", ip: "192.168.56.21"
  end

  config.vm.define vm_name="db01" do |node|
    node.vm.box = "berchev/redis64"
    node.vm.hostname = vm_name
    node.vm.network "private_network", ip: "192.168.56.11"
  end 
 
end
