name             'chef-jetty'
maintainer       "Jiva Technology Limited"
maintainer_email "theo@jivatechnology.com"
license          "Apache 2.0"
description      "Installs/Configures jetty"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1"

depends          "java"
depends          "iptables"