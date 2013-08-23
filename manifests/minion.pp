# == Class: salt::minion
#
# This class install and configure the salt agent (minion)
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { 'salt::minion': }
#
# === Authors
#
# Francois Deppierraz <francois.deppierraz@nimag.net>
#
# === Copyright
#
# Copyright 2013 Francois Deppierraz, unless otherwise noted.
#
class salt::minion (
  $ensure   = 'present',
  $package  = $salt::params::minion_package,
  $service  = $salt::params::minion_service,
  $master   = 'salt',
) inherits salt::params {
  anchor { 'salt::minion::start': } ->
  class { 'salt::minion::package': } ~>
  class { 'salt::minion::config': } ~>
  class { 'salt::minion::service': } ~>
  anchor { 'salt::minion::end': }
}
