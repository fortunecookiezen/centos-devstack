# Centos-7 default.pp. Uses puppetlabs vagrantbox
# Creates a java 8/tomcat 7 server
# phillips.james@gmail.com

#exec { 'yum makecache':
#  command => 'yum makecache',
#  path    => '/usr/bin/',
#  timeout => 60,
#  tries   => 3
#}

package {
  [
    'mlocate',
    'ruby',
    'unzip',
    'java-1.7.0-openjdk',
    'tomcat6'
  ]:
  ensure => 'latest',
  before => Exec['updatedb'],
}

exec { 'updatedb':
    command => 'updatedb',
    path    => '/usr/bin/',
    require => Package['mlocate']
    #update the mlocate database so that the locate command works
}

service { 'tomcat6':
  ensure => running,
  require => Package['tomcat6']
}

exec { 'enable tomcat':
  command => 'chkconfig --level 3 tomcat6 on',
  path => '/sbin/',
  require => Package['tomcat6']}

exec { 'disable iptables':
  command => 'chkconfig iptables off',
  path => '/sbin/'}
