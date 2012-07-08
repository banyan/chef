#
# Cookbook Name:: ack-grep
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "ack-grep"

link "/usr/bin/ack" do
  to "/usr/bin/ack-grep"
end
