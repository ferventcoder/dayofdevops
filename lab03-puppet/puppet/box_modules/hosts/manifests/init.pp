class hosts {
  @@host { 'classroom.puppetlabs.vm':
    ensure       => 'present',
    host_aliases => ['classroom'],
    ip           => '172.168.0.2',
  }

  #Host <| |>
  #realize Host['classroom.puppetlabs.vm']
}
