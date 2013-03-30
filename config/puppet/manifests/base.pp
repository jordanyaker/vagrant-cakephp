Exec { 
	path => "/usr/bin:/bin:/usr/sbin:/sbin"
}

stage { 'first': 
	before => Stage['main']
}

class { 
	'system': stage => first; 
	'mysql': 	stage => main;
	'apache':	stage => main;
} 