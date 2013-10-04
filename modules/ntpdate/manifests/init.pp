class ntpdate {
	package { "ntpdate":
		ensure => installed
	}
	file { '/etc/cron.daily/ntpdate':
		ensure => directory,
		mode => '744',
		owner => 'root',
		group => 'root',
		source => 'puppet:///modules/ntpdate/ntpdate',
	}
}
