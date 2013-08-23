# == Class: salt::params
#
# This class contains common parameters used by other classes in the module
#
# === Authors
#
# Francois Deppierraz <francois.deppierraz@nimag.net>
#
# === Copyright
#
# Copyright 2013 Francois Deppierraz, unless otherwise noted.
#

class salt::params {
  case $::operatingsystem {
    'Ubuntu': {
      $minion_package = 'salt-minion'
      $minion_service = 'salt-minion'

      $master_package = 'salt-master'
      $master_service = 'salt-master'

      case $::operatingsystemrelease {
        '12.04': {
          $ppa_required = true
          $ppa = 'ppa:saltstack/salt'
        }

        default: {
          fail("Unsupported OS Release: ${::operatingsystemrelease}")
        }
      }
    }

    default: {
      fail("Unknown OS: ${::operatingsystem}")
    }
  }
}
