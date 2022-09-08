build:
	rm -f nomansland*.gem
	gem build nomansland.gemspec
	gem install --user-install nomansland-0.0.4.gem -P HighSecurity
