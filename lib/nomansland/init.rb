module Nomansland
  def self.init?
    return :systemd if Dir.exist? '/etc/systemd'
    
    # https://github.com/void-linux/void-runit
    return :runit if Dir.exist? '/etc/runit'
    return :openrc if Dir.exist? '/etc/init.d'
  end
end
