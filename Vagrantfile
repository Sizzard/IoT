Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"
  config.vm.box_version = "12.20250126.1"
  config.vm.define "facarvalS" do |control|
    control.vm.hostname = "facarvalS"
    control.vm.network :private_network, ip: "192.168.56.110"

    control.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--name", "facarvalS"]
      vb.memory = 1024
      vb.cpus = 1
    end
    control.vm.provision "shell", path: "./setupS.sh"
    end
    config.vm.define "facarvalSW" do |control|
      control.vm.hostname = "facarvalSW"
      control.vm.network :private_network, ip: "192.168.56.111"
      control.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--name", "facarvalSW"]
        vb.memory = 1024
        vb.cpus = 1
      end
      control.vm.provision "shell", path: "./setupSW.sh"
  end
end