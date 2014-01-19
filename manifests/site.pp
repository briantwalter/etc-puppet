node default {
	#== files
	file { '/tmp/puppet.ctl':
		content => "this ${operatingsystem} host is puppet mastered by ${servername}\n",
		ensure => present,
	}

	case $operatingsystem {
	  'Ubuntu': {
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
		#include autoupdates
	  }
	}
}
