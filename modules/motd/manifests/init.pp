class motd {
	file { '/etc/motd':
		ensure => directory,
		mode => '0644',
		owner => 'root',
		group => 'root',
		source => 'puppet:///modules/motd/motd',
	}
}
