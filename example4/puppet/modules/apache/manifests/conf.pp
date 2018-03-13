# == Define: conf
#
# Adds an Apache configuration file.
#
define apache::conf() {
  file { "/etc/httpd/${name}":
    source  => "puppet:///modules/apache/${name}",
    require => Package['httpd'],
    notify  => Service['httpd'];
  }
}
