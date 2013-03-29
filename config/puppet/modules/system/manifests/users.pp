class system::users {
  user { 'vagrant': 
    ensure => 'present',
    require => Group['vagrant'],
  }
}