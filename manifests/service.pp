# Class: apache::service
#
# Manages the Apache daemon
#
# Parameters:
#
# Actions:
#   - Manage Apache service
#
# Requires:
#
# Sample Usage:
#
#    sometype { 'foo':
#      notify => Class['apache::service],
#    }
#
#
class apache::service (
  $service_name   = $apache::service_name,
  $service_enable = true,
  $service_ensure = 'running',
) {
  validate_bool($service_enable)

  service { 'httpd':
    ensure => $service_ensure,
    name   => $service_name,
    enable => $service_enable,
  }
}
