#
# Cookbook Name:: redis
# Attributes:: default
#
# Copyright 2010, Atari, Inc
# Copyright 2012, CX, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# installation
default['redis']['install_type'] = "package"
default['redis']['source']['sha'] = "d67d8cc06e05cf4c6f5a10ff588941a10fcb8fb8d81f62524b9b1918d0530b85"
default['redis']['source']['url'] = "http://redis.googlecode.com/files"
default['redis']['source']['version'] = "2.6.4"
default['redis']['src_dir'] = "/usr/src/redis"
default['redis']['dst_dir'] = "/opt/redis"
default['redis']['conf_dir'] = "/etc/redis"
default['redis']['init_style'] = "init"

# service user & group
default['redis']['user'] = "redis"
default['redis']['group'] = "redis"

# configuration
default['redis']['config']['appendonly'] = "no"
default['redis']['config']['appendfsync'] = "everysec"
default['redis']['config']['daemonize'] = "yes"
default['redis']['config']['databases'] = "16"
default['redis']['config']['dbfilename'] = "dump.rdb"
default['redis']['config']['dir'] = "/var/lib/redis"
default['redis']['config']['listen_addr'] = "127.0.0.1"
default['redis']['config']['listen_port'] = "6379"
default['redis']['config']['logfile'] = "stdout"
default['redis']['config']['loglevel'] = "warning"
default['redis']['config']['pidfile'] = "/var/run/redis.pid"
default['redis']['config']['rdbcompression'] = "yes"
default['redis']['config']['timeout'] = "300"
default['redis']['config']['syslog_enabled'] = "no"
default['redis']['config']['syslog_ident'] = "redis"
default['redis']['config']['syslog_facility'] = "local0"

###
## the following configuration settings may only work with a recent redis release
###
default['redis']['config']['configure_slowlog'] = false
default['redis']['config']['slowlog_log_slower_than'] = "10000"
default['redis']['config']['slowlog_max_len'] = "1024"

default['redis']['config']['configure_maxmemory_samples'] = false
default['redis']['config']['maxmemory_samples'] = "3"

default['redis']['config']['configure_no_appendfsync_on_rewrite'] = false
default['redis']['config']['no_appendfsync_on_rewrite'] = "no"

default['redis']['config']['configure_list_max_ziplist'] = false
default['redis']['config']['list_max_ziplist_entries'] = "512"
default['redis']['config']['list_max_ziplist_value'] = "64"

default['redis']['config']['configure_set_max_intset_entries'] = false
default['redis']['config']['set_max_intset_entries'] = "512"
