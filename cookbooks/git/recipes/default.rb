#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

case node[:platform]
when "debian", "ubuntu"
  package "git-core"
else 
  package "git"
end
