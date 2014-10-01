# vagrant-package.json

**this is "proof of concept" software**

### Usage

require the class into your ```Vagrantfile``` and you can use the different ```package.json``` keys.

simple example:

    require "./package.json.rb"
    package = Package.new()

    VAGRANTFILE_API_VERSION = "2"

    Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
      config.vm.box = "base"

      config.vm.provider :virtualbox do |vb|
        # for the virtualbox name we use the package.json name and version
        vb.name = package.name+"-v"+package.version
      end
    end

