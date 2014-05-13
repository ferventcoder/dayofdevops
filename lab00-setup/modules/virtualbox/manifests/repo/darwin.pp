# == Class: virtualbox::repo::darwin
#
# Install VirtualBox for Darwin
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
# https://github.com/skoblenick/puppet-virtualbox/blob/master/manifests/install.pp
#
class virtualbox::repo::darwin(
  $baseurl,
  $version = '4.3.10',
  $build = '93012'
) {
    $source = "${$baseurl}/${version}/VirtualBox-${version}-${build}-OSX.dmg"

    package {"VirtualBox-${version}-${build}":
      ensure => installed,
      source => $source,
      provider => pkgdmg,
    }
  }
