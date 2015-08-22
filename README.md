# vagrant-files

Create Vagrant virtual machine for linux

1. Select a machine to create, for now there's just one virtual machine [trusty-amd64](https://github.com/vrunoa/vagrant-files/blob/master/trusty-amd64). You can select a different machine here: [http://www.vagrantbox.es/](http://www.vagrantbox.es/)
2. Start and connect to your vm;
  * vagrant up
  * vagrant ssh
3. If you run your vm for the first time, run [prepare.sh](https://github.com/vrunoa/vagrant-files/blob/master/prepare.sh) to update and install a minimuum set of tools. 

#Enable USB

Add this lines to your [Vagrantfile](https://github.com/vrunoa/vagrant-files/blob/master/Vagrantfile), inside the **configure** section
```ruby
  # enable usb
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--usb", "on"]
    vb.customize ["modifyvm", :id, "--usbehci", "on"]
  end
```
