# == Class: salt::minion::config
#
# This class manages configure files of the salt controller
#
# === Authors
#
# Francois Deppierraz <francois.deppierraz@nimag.net>
#
# === Copyright
#
# Copyright 2013 Francois Deppierraz, unless otherwise noted.
#
class salt::minion::config {
  file { '/etc/salt/minion.d/master.conf':
    ensure  => $salt::minion::ensure,
    content => "master: ${salt::minion::master}\n",
    notify  => Service[$salt::minion::service],
  }
}
