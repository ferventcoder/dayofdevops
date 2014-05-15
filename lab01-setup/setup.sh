#install puppet and git first

# http://docs.puppetlabs.com/guides/installation.html

# install puppet
#mac users:
#gem install puppet -v 3.5.1

#Debian:
# http://docs.puppetlabs.com/guides/installation.html#debian-and-ubuntu
#Ubuntu 12.04 Example:
# wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
# sudo dpkg -i puppetlabs-release-precise.deb
# sudo apt-get update
# sudo apt-get install puppet-common -y -qq

#RedHat:
# http://docs.puppetlabs.com/guides/installation.html#red-hat-enterprise-linux-and-derivatives
#EL6 Example:
#sudo rpm -ivh http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm
#sudo yum -y install puppet

sudo puppet apply manifests/setup.pp --modulepath ./modules
