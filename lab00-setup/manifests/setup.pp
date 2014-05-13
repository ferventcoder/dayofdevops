# host setup
notify {'Setting up host...':} ->

# install vagrant
class { 'vagrant':
  version => '1.5.4'
} ->

#boxes:
vagrant::box { 'ubuntu-12.04-64-nocm':
  box_provider => 'virtualbox',
  box_url      => 'https://vagrantcloud.com/puppetlabs/ubuntu-12.04-64-nocm/version/2/provider/virtualbox.box',
} ->

vagrant::box { 'centos-6.5-64-nocm':
  box_provider => 'virtualbox',
  box_url      => 'https://vagrantcloud.com/puppetlabs/centos-6.5-64-nocm/version/2/provider/virtualbox.box',
} ->

vagrant::plugin {'vagrant-windows':} ->

#may fail - go for 0.0.16
vagrant::plugin {'sahara':}

# virtualbox 4.3.10
class {'virtualbox':
}
