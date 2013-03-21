class sunjava::install {

  case $sunjava::jdk {
    true: {
      preseed { 'sun-java6-jdk':
        ensure => present,
        source => 'sunjava/debconf.sunjava.erb'
      }
    }

    default: {
      preseed { 'sun-java6-jre':
        ensure => present,
        source => 'sunjava/debconf.sunjava.erb'
      }
    }
  }

}
