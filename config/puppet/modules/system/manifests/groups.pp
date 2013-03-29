class system::groups {
  group { 'puppet': 
    ensure => 'present',
  }

  group { 'vagrant': 
    ensure => 'present',
  }

  Group['puppet'] -> Group['vagrant']
}