class apache::mod {
  exec { "mod-rewrite":
    unless => "ls /etc/apache2/mods-enabled/rewrite*",
    command => "a2enmod rewrite",
    notify  => Service["apache2"],
    require => Package["apache2"]
  }
}