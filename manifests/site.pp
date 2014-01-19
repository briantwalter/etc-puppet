node default {
  #== files
  file { '/tmp/puppet.ctl':
    ensure  => present,
    content => "this ${operatingsystem} host is puppet \
      mastered by ${servername}\n"
  }
  #== case based on OS type
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
      include autoupdates
    }
    default: {
    }
  }
}
