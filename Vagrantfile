# Vagrant configuration files are put together using Ruby syntax.

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here.
  config.vm.box = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. For this configuration
  # we will be accessing HTTP on port 4567.
  config.vm.network :forwarded_port, guest: 80, host: 4567
end