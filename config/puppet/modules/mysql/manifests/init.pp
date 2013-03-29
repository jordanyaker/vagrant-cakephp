class mysql {
  # Global variable configurations
  $mysql_admin_password = 'password'

  include mysql::server

  include mysql::admin
  mysql::admin::set_admin_password { 'set-admin-password' :
    password => $mysql_admin_password,
  }
}