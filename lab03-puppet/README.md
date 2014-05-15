# Lab 3 - Configuration Management (Puppet)

Time - 2hrs

## Instruction & Demo

 * Puppet overview
 * package management overview (chocolatey / apt / yum)

## Lab

### Exercise 1

 1. Open a command line and head into this directory.
 1. Call `vagrant up`.
 1. Once vagrant up has finished, on the host (not the box) type `vagrant ssh master` - this is a multi-machine vagrant environment, otherwise you would only need `vagrant ssh`.
 1. Type `puppet cert list --all`.
 1. Type `ls /etc/puppet/manifests`. Note the manifests are the same as the ones local.
 1. Pick a box to ssh into for the remainder: centos, ubuntu, or win2012.
 1. Once you are into the box, type `puppet agent -td`. This should force the certificate request so that puppet master can talk to the system.
 1. Watch what it does. Note that it creates a file.

## Review
