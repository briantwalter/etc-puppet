class users {
	group { 'brian':
		ensure => present,
		gid => '501',
	}
	group { 'netuser':
		ensure => present,
		gid => '1500',
	}
	user { 'brian':
		ensure => present,
		uid => '501',
		gid => '501',
		groups => [ "sudo", "netuser", "adm" ],
		comment => 'Brian Walter',
		home => '/home/brian',
		shell => '/bin/bash',
	}
}
