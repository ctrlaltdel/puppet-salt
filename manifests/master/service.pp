# == Class: salt::master::service
#
# This class manages the salt controller services
#
# === Authors
#
# Francois Deppierraz <francois.deppierraz@nimag.net>
#
# === Copyright
#
# Copyright 2013 Francois Deppierraz, unless otherwise noted.
#
class salt::master::service {
  service { $salt::master::service:
    ensure => running,
  }
}
