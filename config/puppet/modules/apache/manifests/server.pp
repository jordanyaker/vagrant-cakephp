class apache::server {
  service { "apache2":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    require => Package["apache2"],
  }
}