node default {

}

# any box that starts with win
node /^win.*$/ {
  file { [
    'c:/users/administrator/desktop'
  ]:
    ensure => directory,
  }

  file { 'c:/users/administrator/desktop/from_master_sync.txt':
    ensure => file,
    content => 'This was put here on a master sync',
  }
}

