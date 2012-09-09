# == Class: sunjava
#
# Installs Sun Java JRE or JDK.
#
# === Parameters
#
# [*jdk*]
#  Install JDK. Default: false
#
# === Examples
#
# class { 'sunjava':
#   jdk => true,
# }
#
# === Authors
#
# Sergey Stankevich
#
class sunjava (
  $jdk = false
) {

  # Compatibility check
  $compatible = [ 'Debian', 'Ubuntu' ]
  if ! ($::operatingsystem in $compatible) {
    fail("Module is not compatible with ${::operatingsystem}")
  }

  include sunjava::install

}
