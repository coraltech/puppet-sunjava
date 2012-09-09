class sunjava::install {

  case $sunjava::jdk {
    true: {
      preseed { 'sun-java6-jdk':
        ensure => present,
        source => 'sunjava/debconf.sunjava.erb'
      }

      package { 'avahi-daemon':
        ensure  => purged,
        require => Package['sun-java6-jdk'],
      }
    }

    default: {
      preseed { 'sun-java6-jre':
        ensure => present,
        source => 'sunjava/debconf.sunjava.erb'
      }

      package { 'avahi-daemon':
        ensure  => purged,
        require => Package['sun-java6-jre'],
      }
    }
  }

}
