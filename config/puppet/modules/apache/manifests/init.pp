class apache {
  package { "apache2": 
    ensure => installed,
  } ->
  class { 
    "apache::server":;
    "apache::mod":;
    "apache::settings":;
  }
}