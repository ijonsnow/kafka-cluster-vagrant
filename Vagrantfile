
Vagrant.configure(2) do |config|
  
  vagrant_root = File.dirname(__FILE__)

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  config.vm.define "node-01" do |machine|
           machine.vm.hostname = "node-01"
           machine.vm.network "private_network", ip: "10.0.0.1"
           machine.vm.network :forwarded_port, guest: 2181, host: "2181"           
  end

  config.vm.define "node-02" do |machine|
           machine.vm.hostname = "node-02"
           machine.vm.network "private_network", ip: "10.0.0.2"
           machine.vm.network :forwarded_port, guest: 2181, host: "2180"
  end  

  

  config.vm.provision "ansible" do |ansible|
    ansible.groups = {
      "kafka.development" => ["node-01","node-02"]
    }
    ansible.playbook = "playbook.yml"
  end
end
