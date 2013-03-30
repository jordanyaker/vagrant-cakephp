class system::groups {
  group { 
    'puppet': 
      ensure => 'present';
    'vagrant': 
      ensure => 'present';
  }
}