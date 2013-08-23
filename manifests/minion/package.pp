# == Class: salt::minion::package
#
# This class install packages required to run a salt agent
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
# [*minion_package*]
#   Salt minion package name
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
class salt::minion::package {

  if $salt::minion::ppa_required {
    ensure_resource('apt::ppa', $salt::params::ppa)
  }

  package { $salt::minion::package:
    ensure  => $salt::minion::ensure,
    require => Apt::Ppa[$salt::params::ppa],
  }
}
