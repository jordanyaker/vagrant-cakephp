# Vagrant configuration files are put together using Ruby syntax.

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here.
  config.vm.box = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'
  config.vm.synced_folder "app/", "/var/www/app"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. For this configuration
  # we will be accessing HTTP on port 4567.
  config.vm.network :forwarded_port, guest: 80, host: 4567

  # Enable provisioning with Puppet stand alone.
  config.vm.provision :puppet do |puppet|
    # Puppet modules are more complex configuration setups which
    # are helpful for performing tasks like setting up a database
    # and performing the loading of a default set of objects.
    puppet.module_path = "config/puppet/modules"

    # Puppet manifests are better suited for more simplistic scripting
    # which only relies on the commands within the given manifest.
    puppet.manifests_path = "config/puppet/manifests"

    # The handing of the puppet commands for the setup requires a
    # base entry point that will be used to call all of the other
    # configuration/initialization items.
    puppet.manifest_file = "base.pp"
  end
end