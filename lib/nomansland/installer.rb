module Nomansland
  def self.installer?
    return :yum     if File.exist? '/usr/bin/yum'
    return :apt_get if File.exist? '/usr/bin/apt-get'
    return :pacman  if File.exist? '/usr/bin/pacman'
    return :emerge  if File.exist? '/usr/bin/emerge'
    return :void    if File.exist? '/usr/bin/xbps-install'
  end
end
