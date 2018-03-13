# == Class: apache
#
# Installs packages for Apache and sets config files.
#
class apache {
  package { ['httpd', ]:
    ensure => present;
  }

  service { 'httpd':
    ensure  => running,
    require => Package['httpd'];
  }

  apache::conf { ['apache2.conf', 'envvars', 'ports.conf']: }
}
