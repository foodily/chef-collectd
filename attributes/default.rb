default["collectd"]["version"]            = "5.4.1"
default["collectd"]["dir"]                = "/opt/collectd"
default["collectd"]["url"]                = "http://collectd.org/files/collectd-#{node["collectd"]["version"]}.tar.gz"
default["collectd"]["checksum"]           = "853680936893df00bfc2be58f61ab9181fecb1cf45fc5cddcb7d25da98855f65"
default["collectd"]["interval"]           = 10
default["collectd"]["read_threads"]       = 5
default["collectd"]["name"]               = node["fqdn"]
default["collectd"]["plugins"]            = Mash.new
default["collectd"]["graphite_role"]      = "graphite"
default["collectd"]["graphite_ipaddress"] = ""
#allow for port override
default["collectd"]["graphite_port"]      = "2003"
#override  graphite search to allow for shared logging environment
default["collectd"]["graphite_search"] = "roles:#{node["collectd"]["graphite_role"]} AND chef_environment:#{node.chef_environment}"
default["collectd"]["action"]		  =[:enable,:start]
