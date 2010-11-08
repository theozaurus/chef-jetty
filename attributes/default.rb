expand!

default[:jetty][:version]   = "7.1.6.v20100715"
default[:jetty][:link]      = "http://download.eclipse.org/jetty/#{jetty.version}/dist/jetty-distribution-#{jetty.version}.tar.bz2"
default[:jetty][:checksum]  = "06436e51560cc67b6f571dc98db38ceee12fb7ac8aa70bc8e8c7e9761ef38387"
default[:jetty][:directory] = "/usr/local/src"
default[:jetty][:download]  = "#{jetty.directory}/jetty-distribution-#{jetty.version}.tar.bz2"
default[:jetty][:extracted] = "#{jetty.directory}/jetty-distribution-#{jetty.version}"

default[:jetty][:user]      = "jetty"
default[:jetty][:group]     = "adm"
default[:jetty][:home]      = "/usr/share/jetty"
default[:jetty][:port]      = "8983"
default[:jetty][:log_dir]   = "/var/log/jetty"
default[:jetty][:cache]     = "/var/cache/jetty"