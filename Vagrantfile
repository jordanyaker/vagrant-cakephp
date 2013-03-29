# Vagrant configuration files are put together using Ruby syntax.

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here.
  config.vm.box = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. For this configuration
  # we will be accessing HTTP on port 4567.
  config.vm.network :forwarded_port, guest: 80, host: 4567

  # Enable provisioning with Puppet stand alone.
  config.vm.provision :puppet do |puppet|
    # Tell the system to load modules from the ./config/puppet path.
    puppet.manifests_path = "config/puppet"
    puppet.manifest_file = "base.pp"
  end
end