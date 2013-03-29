class mysql::server {
  package { "mysql-server":
    ensure => installed
  }

  service { "mysql":
    enable => true,
    ensure => running,
    hasrestart => true,
    hasstatus => true,
    require => Package["mysql-server"],
  }
}