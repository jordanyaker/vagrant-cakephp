class apache::settings {
  $config = '/etc/apache2/sites-available/default'
    
  exec { "servername":
    subscribe => Package["apache2"],
    unless  => "grep '^ServerName' /etc/apache2/apache2.conf",
    command => "echo ServerName app >> /etc/apache2/apache2.conf",
    notify  => Service["apache2"],
  } ->
  exec { "allow-override":
    unless => "sed -n '11 p' $config | grep 'AllowOverride All'",
    command => "sed -i '11 s/None/All/' $config",
    notify  => Service["apache2"],
  } ->
  user { "www-data":
    groups => ["vagrant"],
    notify  => Service["apache2"],
    require => Group["vagrant"]
  }
}