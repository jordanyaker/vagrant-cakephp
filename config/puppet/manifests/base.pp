Exec { 
	path => "/usr/bin:/bin:/usr/sbin:/sbin"
}

class { "system" : }
class { "mysql" : }
class { "apache" : }