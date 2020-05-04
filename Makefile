build:
	rm -f nomansland*.gem
	gem build nomansland.gemspec
	gem install nomansland-0.0.2.gem -P HighSecurity
