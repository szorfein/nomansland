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
require 'Nomansland'

puts "Running Fedora" if Nomansland::distro? == :fedora
puts "Running Gentoo" if Nomansland::distro? == :gentoo
```

Sometimes, it is better to search by installer:

```rb
require 'Nomansland'

case Nomansland::installer?
  when :yum
    system("sudo yum install tor")
  when :apt_get
    system("sudo apt-get install tor")
  when :pacman
    system("sudo pacman -S tor")
end
```
