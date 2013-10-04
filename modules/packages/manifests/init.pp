class packages {
	package { 'wget':
		provider => 'apt',
		ensure => 'latest',
	}
	package { 'sysstat':
		provider => 'apt',
		ensure => 'latest',
	}
	package { 'git':
		provider => 'apt',
		ensure => 'latest',
	}
	package { 'vim':
		provider => 'apt',
		ensure => 'latest',
	}
}
