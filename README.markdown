Saltstack

This is the salt module.

Usage
-----

Install and configure the salt master:

  class { 'salt::master': }

Install and configure a salt minion:

  class { 'salt::minion': }

Install and configure a salt minion with a non-standard salt-master hostname:

  class { 'salt::minion':
    master  => 'foo.company.corp',
  }

<!--
  class { 'salt::api': }

  class { 'salt::cloud': }
-->

Develop
-------

  mkdir vendor
  export GEM_HOME=vendor
  bundle install
  # bundle exec rake -T
  bundle exec rake spec

License
-------

GPLv2+

Contact
-------

Francois Deppierraz <francois.deppierraz@nimag.net>

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/ctrlaltdel/puppet-salt)
