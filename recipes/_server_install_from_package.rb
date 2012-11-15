#
# Cookbook Name:: redis
# Recipe:: _server_install_from_package

case node.platform
when "debian", "ubuntu"
  pkg = "redis-server"
  # Install a repo that has more up to date packages
  apt_repository "dotdeb" do
    uri "http://packages.dotdeb.org"
    distribution "squeeze"
    components ['all']
    keyserver "keys.gnupg.net"
    key "89DF5277"
    action :add
  end
when "redhat", "centos", "scientific", "fedora"
  include_recipe "yum::epel"
  pkg = "redis"
else
  pkg = "redis"
end

package "redis" do
  package_name pkg
  action :install
end
