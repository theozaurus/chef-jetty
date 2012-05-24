expand!

default[:jetty][:version]   = "7.6.3.v20120416"
default[:jetty][:link]      = "http://download.eclipse.org/jetty/stable-7/dist/jetty-distribution-#{jetty.version}.tar.gz"
default[:jetty][:checksum]  = "66a2a7c5b20af89c9fdbe7d2599f072553d0f5ca32b6060d84899eb5c9eda6e3" # SHA256
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