#setup gaudi

class gaudi {
  include apt  

  apt::source { 'gaudi_apt_source':
    location   => 'http://gaudi.io/apt/',
    release    => 'precise',
    repos      => 'main',
    required_packages => 'wget',
    key        => 'ACF89BC0',
    key_source => 'http://gaudi.io/apt/gaudi.gpg.key'
  }

  ->
  package { 'gaudi_package':
    ensure => 'present',
    name => 'gaudi',
  }
}
