class apache::server {
  package { "apache2": 
    ensure => installed,
    require => Exec["apt-get-update"]
  }

  service { "apache2":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    require => Package["apache2"],
  }
}