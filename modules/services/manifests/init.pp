class services {
	package { 'openssh-server':
		provider => 'apt',
		ensure => 'latest',
	}
	service { 'ssh':
		ensure => 'running'
	}
}
