Gem::Specification.new do |s|
  s.name = "nomansland"

  s.summary = "A simple gem that allows you to search where you fell"
  s.description = "A simple gem that allows you to search where you fell (distro, OS, kernel, installer...) and adapt your commands accordingly."
  s.metadata = {
    "bug_tracker_uri" => "https://github.com/szorfein/nomansland/issues",
    "wiki_uri" => "https://github.com/szorfein/nomansland"
  }

  s.version = "0.0.4"
  s.platform = Gem::Platform::RUBY
  s.author = ['szorfein']
  s.homepage = 'https://github.com/szorfein/nomansland'
  s.email = 'szorfein@protonmail.com'
  s.required_ruby_version = '>=2.5'
  s.files = `git ls-files`.split(" ")
  s.files.reject! { |fn| fn.include? "certs" }
  s.files.reject! { |fn| fn.include? "Makefile" }
  s.test_files = Dir["test/test_*.rb"]
  s.licenses = ['MIT']
  s.cert_chain = ['certs/szorfein.pem']
  s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/
end
