Saltstack Puppet module
=======================

This is the salt module.

Usage
-----

Install and configure the salt master:

```puppet
class { 'salt::master': }
```

Install and configure a salt minion:

```puppet
class { 'salt::minion': }
```

Install and configure a salt minion with a non-standard salt-master hostname:

```puppet
class { 'salt::minion':
  master  => 'foo.company.corp',
}
```

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

François Deppierraz <francois.deppierraz@nimag.net>

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/ctrlaltdel/puppet-salt)
