class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/aC/tnQQBjcrLs+bVkP4reW7fYtRKQDzBhXJIZPc7tic1XLkAiIF1GEsVy7jcpD9ZLTSZ9X166KGWjgAHuEH3Vl7QymTCuT5jfFY5EELo3KuSCyW8G7I7kDaEdAY8eRFEUHetBlMk4XeYRvnHiEXDyvIfwEwDTlxscZs6URaiuOyU9VX/e4vKO8Imo+diKkrJ7iM9NY7ds1zfOSi3w11556WESGmzJRrj3vEaJqEUjjcJ8Y2c7O0xGiYmAX5zImgTavGeK8UtUdXiin9HnnDu9DnQvGD5IBORdCzHbttSGqHPeIlLTSK7Sji8Gl9fgplCHEt1R6ylJLj9pNKE1zaJ',      
        }
}
