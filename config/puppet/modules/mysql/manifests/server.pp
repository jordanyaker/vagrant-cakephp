class mysql::server {
  service { "mysql":
    enable => true,
    ensure => running,
    hasrestart => true,
    hasstatus => true,
    require => Package["mysql-server"]
  }
}