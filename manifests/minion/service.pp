# == Class: salt::minion::service
#
# This class manages the salt agent services
#
# === Authors
#
# Francois Deppierraz <francois.deppierraz@nimag.net>
#
# === Copyright
#
# Copyright 2013 Francois Deppierraz, unless otherwise noted.
#
class salt::minion::service {
  service { $salt::minion::service:
    ensure => running,
  }
}
