# == Class: salt::master
#
# This class install and configure the salt controller (master)
#
# === Parameters
#
# Document parameters here.
#
# [*ensure*]
#   Defaults to present.
#
# [*master_package*]
#   Salt master package name.
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
#  class { 'salt::master': }
#
# === Authors
#
# Francois Deppierraz <francois.deppierraz@nimag.net>
#
# === Copyright
#
# Copyright 2013 Francois Deppierraz, unless otherwise noted.
#
class salt::master (
  $ensure       = 'present',
  $package      = $salt::params::master_package,
  $service      = $salt::params::service_package,
  $ppa_required = $salt::params::ppa_required,
  $ppa          = $salt::params::ppa,
  ) inherits salt::params {

  validate_re($ensure, '^(present|absent)$')
  validate_bool($ppa_required)

  anchor { 'salt::master::start': } ->
  class { 'salt::master::package': } ~>
  class { 'salt::master::config': } ~>
  class { 'salt::master::service': } ~>
  anchor { 'salt::master::end': }
}
