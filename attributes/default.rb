expand! unless Chef::Config[:solo]

default[:jetty][:version]   = "7.6.14.v20131031"
default[:jetty][:link]      = "http://download.eclipse.org/jetty/#{jetty.version}/dist/jetty-distribution-#{jetty.version}.tar.gz"
default[:jetty][:checksum]  = "4492f0818614ef2a6c6bda3c3ab542c3871c55c10b6dc91319c94b087208a04c" # SHA256
default[:jetty][:directory] = "/usr/local/src"
default[:jetty][:download]  = "#{jetty.directory}/jetty-distribution-#{jetty.version}.tar.gz"
default[:jetty][:extracted] = "#{jetty.directory}/jetty-distribution-#{jetty.version}"

default[:jetty][:user]      = "jetty"
default[:jetty][:group]     = "adm"
default[:jetty][:home]      = "/usr/share/jetty"
default[:jetty][:port]      = 8983
default[:jetty][:hidden_port] = 8983 if jetty.port.to_i < 1024

default[:jetty][:log_dir]   = "/var/log/jetty"
default[:jetty][:cache]     = "/var/cache/jetty"
