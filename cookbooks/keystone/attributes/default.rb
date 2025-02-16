default[:keystone][:config_file] = "/etc/keystone/keystone.conf"
default[:keystone][:log_config] = "/etc/keystone/logging.cnf"

default[:keystone][:verbose] = "True"
default[:keystone][:debug] = "True"
default[:keystone][:default_store] = "sqlite"
default[:keystone][:sql_connection] = "sqlite:////var/lib/keystone/keystone.db"
default[:keystone][:sql_idle_timeout] = "30"
default[:keystone][:log_file] = "/var/log/keystone/api.log"
default[:keystone][:service_protocol] = "http"
default[:keystone][:service_host] = "0.0.0.0"
default[:keystone][:service_port] = "5000"
default[:keystone][:admin_protocol] = "http"
default[:keystone][:admin_host] = "0.0.0.0"
default[:keystone][:admin_port] = "5001"
default[:keystone][:admin_role] = "Admin"
default[:keystone][:service_admin_role] = "KeystoneServiceAdmin"
default[:keystone][:sql_idle_timeout] = "3600"

default[:keystone][:sql_connection] = "sqlite:////var/lib/keystone/keystone.sqlite"

#default setup commands for keystone::setup recipe
default[:keystone][:setup_commands] = [
"tenant add 'admin'",
"user add admin AABBCC112233 admin",
"role add Admin nova",
"role add Member nova",
"role grant Admin admin",
"endpointTemplates add RegionOne nova http://nova1:8774/v1.1 http://nova1:8774/v1.1 http://nova1:8774/v1.1 1 1",
"endpoint add admin 1",
"service add nova",
"credentials add admin EC2 'admin:admin' admin admin",
"token add '999888777666' 'admin' 'admin' '2020-02-05T00:00'"
]
