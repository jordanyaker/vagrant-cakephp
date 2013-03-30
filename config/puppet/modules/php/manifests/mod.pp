class php::mod {
  exec { "mod-php":
    unless => "ls /etc/apache2/mods-enabled/php5*",
    command => "a2enmod php5",
    notify  => Service["apache2"],
    require => Package["apache2"]
  }
}