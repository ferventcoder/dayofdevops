# Lab 0 - Machine Setup

Time - 1-2hrs

## Instruction & Demo

### Prerequisites (some are installed by lab)

 * [Vagrant 1.5.4](http://downloads.vagrantup.com/tags/v1.5.4).
 * [VirtualBox 4.3.10](https://www.virtualbox.org/wiki/Downloads)
 * Vagrant-Windows 1.6.0+ - `vagrant plugin install vagrant-windows`.
 * Sahara - `vagrant plugin install sahara`.
 * At least 50GB free on the host box.

## Lab

We need the following items set up on your machine:

  * git
  * puppet
  * vagrant 1.5.4 (this is the only one we are going to support in this course - unless issues)
  * vagrant-windows and sahara plugins
  * virtualbox

The good news is that after you install git, we can help with the rest.

  1. Go to [Git downloads](http://git-scm.com/download)
  1. Download and install the appropriate version
  1. After install, open a command line / shell
  1. Go to your code directory and/or create a top level directory under which you want a folder that will have the course files
  1. git clone https://github.com/ferventcoder/dayofdevops.git dayofdevops
  1. cd dayofdevops
  1. cd lab01-setup
  1. At this time look around.
  1. If your laptop is not Windows, please install puppet (see setup.sh for instructions)
  1. Run sudo bash ./setup.sh or from an administrative command prompt run setup.cmd (if you are already in posh you can setup.ps1)
  1. This is going to take awhile, we have some boxes to download here.

## Review
