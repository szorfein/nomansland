# nomansland
A simple gem that allows you to search where you fell (distro, OS, kernel, installer...) and adapt your commands accordingly.

## Install
Nomansland is cryptographically signed, so add my public key (if you haven’t already) as a trusted certificate.

    $ gem cert --add <(curl -Ls https://raw.githubusercontent.com/szorfein/spior/master/certs/szorfein.pem)

And install

    $ gem install nomansland

## Usage
By distrib:

```rb
require 'nomansland'

case Nomansland::distro?
when :fedora
  puts 'Running Fedora'
when :gentoo
  puts 'Running Gentoo'
end
```

Sometimes, it is better to search by installer:

```rb
require 'nomansland'

case Nomansland::installer?
when :yum
  system('sudo yum install tor')
when :apt_get
  system('sudo apt-get install tor')
when :pacman
  system('sudo pacman -S tor')
end
```
