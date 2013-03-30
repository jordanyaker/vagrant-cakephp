class apache {
  class { "apache::server" : }
  class { "apache::settings" : }
  class { "apache::mod" : }
}