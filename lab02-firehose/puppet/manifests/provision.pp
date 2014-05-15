
package { 'vim':
  ensure => installed,
  provider => chocolatey,
}

package {'roundhouse':
  ensure => installed,
  provider => chocolatey,
  source => 'c:/vagrant/resources/packages',
}

