build:
	rm -f nomansland*.gem
	gem build nomansland.gemspec
	gem install --user-install nomansland-0.0.5.gem -P HighSecurity
