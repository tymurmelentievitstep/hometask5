Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"

  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "hometask5" 
    vb.cpus = 2 
    vb.memory = 1024
  end
  
  config.vm.provision "file", source: "move.service", destination: "~/move.service"
  config.vm.provision "shell", path: "task5.sh"
end