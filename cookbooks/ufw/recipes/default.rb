#
# Cookbook Name:: ufw
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe "apt"

package "ufw" do
  action :upgrade
end

execute "enable UFW" do
  user "root"
  command "ufw allow 10022; echo y | ufw enable" # "Command may disrupt existing ssh connections. Proceed with operation (y|n)?"
end
