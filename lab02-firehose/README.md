# Lab 2 - The Firehose

Time - 1.5hrs

## Instruction & Demo

This is where you will see a working example of a healthy environment.
The lab will start you with an almost complete setup, save a few edits.

## Lab

### Exercise 1 - Vagrant Provisioning/Familiarization

 1. Open a command line and head into this directory.
 1. Call `vagrant up`
 1. While you are waiting for vagrant to initialize, familiarize yourself with the code. In the VagrantFile notice we call the shell provisioner (Vagrant has providers and provisioners, the latter being things that can take a box from a predefined state to an end state or goal). The box we are pulling down has nothing installed aside from what is required for vagrant to work.
 1. We allow the shell provisioner (in shell/main.cmd) to install:
    * .NET Framework 4.0 (which takes some time)
    * Chocolatey
    * Puppet 3.5.1
    * librarian-puppet to install/update required modules
 1. Notice the resources folder has some local packages in it.
 1. Notice the puppet/PuppetFile and the modules that it contains for Puppet.
 1. Open the puppet/manifests/site.pp in an editor.
 1. When everything finishes you should have a Windows 2012 box and a CentOS box.
 1. On the Windows box you should have a variety of things installed including chocolatey, puppet (agent), and vim (in puppet/manifests/provision.pp).
 1. Once `vagrant up` has finished, on the host (not the box) type `vagrant ssh win2012` - this is a multi-machine vagrant environment, otherwise you would only need `vagrant ssh`.
 1. Now type `cd c:\chocolatey\lib`
 1. Type `dir`. Note that `roundhouse` is installed.
 1. Type `exit`. This should bring you out of the box.

### Exercise 2



## Review
