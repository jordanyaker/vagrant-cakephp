class system::directories {
  file { '/home/vagrant/bin':
    ensure  => 'directory',
    owner   => 'vagrant',
    group   => 'vagrant',
    mode    => '755',
    require => [ 
      Group['vagrant'], 
      User['vagrant'] 
    ]
  }
}