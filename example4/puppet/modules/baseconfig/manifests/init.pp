# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {
  exec { 'yum update':
    command => '/usr/bin/yum update';
  }

  host { 'hostmachine':
    ip => '192.168.198.1';
  }

  package { ['htop', 'tree', 'unzip']:
    ensure => present;
  }

  file {
    '/home/vagrant/.bashrc':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0644',
      source => 'puppet:///modules/baseconfig/bashrc';
  }
}
