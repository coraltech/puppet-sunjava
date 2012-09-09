[puppet-sunjava](https://github.com/stankevich/puppet-sunjava)
======

Puppet module for installing Sun JRE and JDK 6.

## Usage

### sunjava

Installs Sun JRE and JDK 6.

**jdk** — Install JDK in addition to JRE. Default: false

	class { 'sunjava':
	  jdk => true,
	}

## Authors

[Sergey Stankevich](https://github.com/stankevich)
