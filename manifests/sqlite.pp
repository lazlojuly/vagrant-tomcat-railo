# sqlite.pp

# update all packages
exec { 'apt-update':
  command  => '/usr/bin/apt-get update',
}

# get sqlite
package { 'sqlite3':
  ensure  => '3.7.9-2ubuntu1.1',
  require => Exec['apt-update'],
}

