class apache {
  package { "apache2":
    ensure => installed,
    require => Exec['apt-get-update'],
  }

  class { "apache::mod" : 
    require =>
  }
}