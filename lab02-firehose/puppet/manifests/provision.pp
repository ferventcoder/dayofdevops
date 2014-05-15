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
    ensure => latest,
    source => 'c:\vagrant\resources\packages',
  }

}
