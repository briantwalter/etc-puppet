node default {
	#== files
	file { '/tmp/puppet.ctl':
		content => "this host is puppet mastered by ${servername}\n",
		ensure => present,
	}
	file { '/filer':
		ensure => absent,
		#ensure => link,
		#target => '/home',
	}
	#== includes
	include motd
	include ntpdate
	include users
	include services
	include packages
	include dotfiles
}
