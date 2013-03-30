class php::settings {
  $include = '.:/usr/share/php:/vagrant/vendor/cakephp/lib'
  $cli_ini = '/etc/php5/cli/php.ini'
  $apache_ini = '/etc/php5/apache2/php.ini'

  exec { "cli-include-path":
    subscribe => Package["php5-cli"],
    unless => "grep -q ^include_path $cli_ini",
    command => "echo include_path = $include >> $cli_ini",
    notify  => Service["apache2"],
  } ->
  exec { "apache-include-path":
    unless => "grep -q ^include_path $apache_ini",
    command => "echo include_path = $include >> $apache_ini",
    notify  => Service["apache2"],
  }
}