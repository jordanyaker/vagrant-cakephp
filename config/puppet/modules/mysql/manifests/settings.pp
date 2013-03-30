class mysql::settings {
  $mysql_root_password = 'password'

  exec { 'mysql-set-root-password':
    subscribe => Service['mysql'],
    unless => "mysqladmin -uroot -p${mysql_root_password} status",
    command => "mysqladmin -uroot password ${mysql_root_password}",
  }
}