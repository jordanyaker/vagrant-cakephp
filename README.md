# Vagrant/CakePHP Example

This repository is a baseline example of how to setup a cakePHP project using vagrant.  This project will utilize Vagrant and Puppet
to configure a development environment that contains Apache, MySQL, and Cake PHP.

## Code Structure

The code has been organized in to the following folders in order to provide for optimal flexibility while following best practices:

* `app`: this folder contains all of the code for the application that is being developed.
* `config`: this folder is for all of the project-level configuration files.
  * `puppet`: this folder is for any puppet scripts that are utilized by the project.
* `vendor`: this folder contains all third-party frameworks, libraries, or other files that the project depends upon.

## Vagrant Configuration

(Vagrant):http://vagrantup.com is a tool which allows for easy, programmatic creation of any number of virtual environments.  This allows for the easy creation and management of environments for not only development, but also testing and deployment.

For this example, Vagrant version 1.1.4 was utilized.  This version of Vagrant can be downloaded from (this page):http://downloads.vagrantup.com/tags/v1.1.4.  The Vagrant configuration will be setup to utilize an Ubuntu 12.04 LTS (Precise Pangolin) installation as the testing environment.  A somewhat complete listing of available boxes can be found on (this page):http://www.vagrantbox.es.

When configuring the settings for the virtual environment, all configurations are stored in the `Vagrantfile` configuration file using the Ruby syntax.  Currently, the environment is set for a bare configuration with the box type, network settings, and provisioning details specified.

For more information, the Vagrant documentation is available at (http://docs.vagrantup.com/v2/):http://docs.vagrantup.com/v2/.

## Puppet Configuration

Although Vagrant handles the configuration and provisioning of the environment, provisioning and configuration of the environment's internal software/systems must be handled by an additional tool.  (Puppet):https://puppetlabs.com/puppet/what-is-puppet/ is a tool available from Puppet Labs that allows for the automation of software provisioning and configuration.

For this project, Puppet will be used to setup Apache, MySQL, and CakePHP to ensure that the environment and any necessary dependencies have been satisfied.  The configuration files within the `config/puppet` directory will be utilized by Vagrant as part of the environment management process.  No extra work is necessary on the part of the user in order to utilize Puppet.

For more information, Puppet documentation can be found at (http://docs.puppetlabs.com/puppet/):http://docs.puppetlabs.com/puppet/.

## Setting Up The Environment

When setting up the environment, the only command necessary to startup the box is `vagrant up`.

If the base box has not been downloaded yet, Vagrant will retrieve the box as the first step in setting up the environment.  The Ubuntu 12.04 LTS box is around 293MB.  This may take some time depending on your connection.  Once the setup of the box has been successfully completed, you will see the following message among several diagnostic messages:

> [default] VM booted and ready for use!

To connect to the environment, you can use the command `vagrant ssh`.  Additionally, to destroy the environment, you can use the command `vagrant destroy`.