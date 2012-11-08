#
# Cookbook Name:: rbenv-sudo
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/usr/local/rbenv/plugins" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end


git "/usr/local/rbenv/plugins/rbenv-sudo" do
  repository "git://github.com/dcarley/rbenv-sudo.git"
  reference "master"
  action :sync
end
