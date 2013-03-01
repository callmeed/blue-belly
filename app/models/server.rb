require 'net/ssh'
class Server < ActiveRecord::Base
  attr_accessible :description, :hostname, :ip, :name, :sites_path, :ssh_user, :use_sudo, :web_server


  def df 
    output = simple_command("df -h")
  end 

  def top
    output = simple_command("top -n1 -b")
  end 

  def lsof
    # lsof command needs sudo (?)
    output = simple_command("sudo lsof -i")
  end

  def ls_web
    # ls on the web server path
    output = simple_command("sudo ls -lha #{self.sites_path}")
  end

  def simple_command(kommand)
    output = ""
    Net::SSH.start(self.ip, self.ssh_user) do |ssh|
      output = ssh.exec!("#{kommand}")
    end
    return output
  end
  
end
