
Vagrant.configure('2') do |config|

  config.vm.box = 'yk0/ubuntu-xenial'

    ## Suppress spurious warnings related to the tty
  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end

  config.vm.define 'database' do |db|
    db.vm.hostname = 'wp-database'
    db.vm.provision :shell, path: 'provision-database'
    db.vm.network "private_network", ip: '192.168.121.76'
  end

  config.vm.define 'web' do |web|
    web.vm.hostname = 'wp-webserver'
    web.vm.provision :shell, path: 'provision-web'
    web.vm.network "private_network", ip: '192.168.121.49'
  end

end

# vim: set ft=ruby :
