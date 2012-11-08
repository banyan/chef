#
# Cookbook Name:: ufw
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

package "ufw" do
  action :upgrade
end

service "ufw" do
  enabled true
  running true
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

%w(80 443 6380 10022).each do |allow|
  execute "allow #{allow}" do
    command "ufw allow #{allow}"
  end
end

execute "deny 22" do
  command "ufw deny 22"
end

execute "enable UFW" do
  user "root"
  command "ufw allow 10022; echo y | ufw enable" # "Command may disrupt existing ssh connections. Proceed with operation (y|n)?"
end
