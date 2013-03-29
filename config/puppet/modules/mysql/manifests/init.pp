class mysql {
  # Global variable configurations
  $mysql_admin_password = 'password'

  class { 'mysql::server' : } -> 
  mysql::admin::set_admin_password { 'set-admin-password' :
    password => $mysql_admin_password,
  }
}