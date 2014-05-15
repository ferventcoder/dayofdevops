# Ensure chocolatey is used for Windows
case $::operatingsystem {
  windows: {
    Package {
      provider => chocolatey,
    }
  }
}

package { 'vim':
 ensure => installed,
}

node /^win.*$/ {
  package {'roundhouse':
    ensure => installed,
    source => 'c:/vagrant/resources/packages',
  }

}
