class postfix::package {

	package  { $postfix::package_name:
		ensure => present,
		before => Class['aliases'],
	}
}
