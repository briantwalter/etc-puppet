class autoupdates {
	file { '/etc/apt/apt.conf.d/02periodic':
		ensure => directory,
		mode => '0644',
		owner => 'root',
		group => 'root',
		source => 'puppet:///modules/autoupdates/02periodic',
	}
	file { '/etc/apt/apt.conf.d/50unattended-upgrades':
		ensure => directory,
		mode => '0644',
		owner => 'root',
		group => 'root',
		source => 'puppet:///modules/autoupdates/50unattended-upgrades',
	}
}
