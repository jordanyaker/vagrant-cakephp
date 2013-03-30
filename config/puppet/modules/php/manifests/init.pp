class php {
  $php = ["php5-cli", "php5-mysql", "libapache2-mod-php5", "php-pear"]

  package { $php: 
    ensure => "installed",
    require => Exec["apt-get-update"]
  } ->
  class {
    "php::mod":;
    "php::settings":;
    "php::testing":;
  }
}