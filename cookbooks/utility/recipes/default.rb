#
# Cookbook Name:: utility
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

recipes = %w[ 
  wget
  nmap
  tree
  ntp
  language-pack-ja
  sysv-rc-conf
  trash-cli
]

recipes.each do | package_name |
  package package_name do
    action :install
  end 
end
