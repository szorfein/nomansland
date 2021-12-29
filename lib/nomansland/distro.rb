module Nomansland

  def self.distro?
    return :fedora    if File.exist? '/etc/fedora-release'
    return :redhat    if File.exist? '/etc/redhat-release'
    return :suse      if File.exist? '/etc/SUSE-release'
    return :mandrake  if File.exist? '/etc/mandrake-release'
    return :ubuntu    if File.exist? '/etc/ubuntu-release'
    return :debian    if File.exist? '/etc/debian_version'
    return :gentoo    if File.exist? '/etc/gentoo-release'
    return :archlinux if File.exist? '/etc/arch-release'
    return :void      if self.grep?('/etc/os-release', /void/)
  end

  def self.grep?(file, regex)
    is_found = false
    return is_found unless File.exist? file
    File.open(file) do |f|
      f.each { |l| is_found = true if l.match(regex) }
    end
    is_found
  end
end
