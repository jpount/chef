# Cookbook Name:: bt_go
# Recipe:: agent_linux_chef
# Description:: Installs Chef related testing tools
#

Chef::Log.warn("Install Chef-dk components ... ")
include_recipe 'bt_chef_dk'

Chef::Log.warn("Install Ruby ... ")
include_recipe 'bt_ruby'

