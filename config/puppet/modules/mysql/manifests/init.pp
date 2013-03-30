class mysql {
  package { "mysql-server": 
    ensure => installed,
  } -> 
  class {
    "mysql::server":;
    "mysql::settings":;
    #'mysql::schema':;
    #'mysql::data':;
  }
}