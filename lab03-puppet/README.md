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
 1. Once you are into the box, type `sudo puppet agent -td` or `puppet agent -td` (windows). This should force the certificate request so that puppet master can talk to the system.
 1. Watch what it does. Note that it creates a file.

### Exercise 2

 1. Back on the box, edit the file that it creates.
 1. Type `puppet agent -t` to force a puppet run.
 1. Watch the output.
 1. Now delete the file.
 1. Type `puppet agent -t` to force a puppet run.
 1. Watch that it puts it back.
 1. In puppet/manifests/site.pp, take a look at the manifest.
 1. Edit the content of the created file and save the manifest.
 1. Back on the box run `puppet agent -t`.
 1. Watch the output. Look at the file changes.

### Exercise 3

 1. Create a manifest that installs a package.

### Exercise 4

 1. Create an exported user resource for the ubuntu box.
 1. Realize the user in the default node.
 1. Run the agent on all of the boxes.

## Review
