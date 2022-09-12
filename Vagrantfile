Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "testserver"
  config.vm.network "forwarded_port", id: 'ssh', guest: 22, host: 2222, host_ip: "127.0.0.1", auto_correct: false
  config.ssh.forward_agent = true
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end
  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.name = "cloud"
    virtualbox.memory = 8192
    virtualbox.cpus = 4
  end
end
