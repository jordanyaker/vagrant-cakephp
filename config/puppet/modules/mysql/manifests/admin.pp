class mysql::admin {
  define set_admin_password ($password) {
    exec { "mysql-set-password":
        subscribe => Service["mysql"],
        unless => "mysqladmin -uroot -p${password} status",
        command => "mysqladmin -uroot password ${password}",
    }
  }
}