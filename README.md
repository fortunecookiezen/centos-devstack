# centos-devstack
Repository for vagrant files and puppet configuration for an Centos development server

This uses the following technologies: <a href=https://www.virtualbox.org/>Virtualbox</a>, <a href=https://www.vagrantup.com/>Vagrant</a>, <a href=https://www.centos.org/download/>Centos</a>, <a href=https://puppetlabs.com>Puppet</a>, and <a href=http://tomcat.apache.org/>Apache Tomcat</a> to create a local development environment that closely targets an enterprise devleopment stack (RHEL6/tcServer) using open-source components and without needing to know all the messy details.

<h3>Instructions</h3>

1.  Install <a href=https://www.virtualbox.org/>Virtualbox</a>
2.  Ensure <a href=https://www.vagrantup.com/>Vagrant</a> is installed on your machine
3.  <code>git clone https://github.com/fortunecookiezen/centos-devstack.git</code>
4.  <code>cd centos-devstack</code>
5.  <code>vagrant up</code> (no need to do a <code>vagrant init</code>)
6.  browse to <code>http://localhost:8080/</code>

<h3>What it does</h3>
Vagrant uses Virtualbox to create and manage a virtual machine image on your local desktop. This virtual machine is complete with port mappings so that interaction between the IDE running on your desktop and the local server instance are convenient and easy. The idea is to acheive dev=prod parity by working on a platform that mirrors your production environment. Centos 6 is the open-source equivalent to Redhat Enterprise Linux (RHEL) 6, and Puppet is used to manage the configuration across updates. The same Puppet manifest used to provision the local development environment can be used to provision the production environment.

