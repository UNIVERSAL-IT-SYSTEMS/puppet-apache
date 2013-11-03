class apache::dev {
  include apache::params
  $packages = $apache::params::dev_packages
  if $pachages {
    package { $packages:
      ensure  => present,
      require => Package['httpd'],
    }
  }
}
