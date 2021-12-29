build:
	rm -f nomansland*.gem
	gem build nomansland.gemspec
	gem install --user-install nomansland-0.0.3.gem -P HighSecurity
