class dotfiles {
	file { '/home/brian/.gitconfig':
		ensure => directory,
		mode => '0640',
		owner => 'brian',
		group => 'brian',
		source => 'puppet:///modules/dotfiles/gitconfig',
	}
	file { '/home/brian/.vimrc':
		ensure => directory,
		mode => '0640',
		owner => 'brian',
		group => 'brian',
		source => 'puppet:///modules/dotfiles/vimrc',
	}
}
