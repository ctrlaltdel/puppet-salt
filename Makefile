tests:
	export GEM_HOME=vendor
	bundle install
	bundle exec rake lint
	bundle exec rake spec
