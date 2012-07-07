#
# Cookbook Name:: openssh
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

packages = case node[:platform]
  when "centos","redhat","fedora","scientific"
    %w{openssh-clients openssh}
  when "arch"
    %w{openssh}
  else
    %w{openssh-client openssh-server}
  end
  
packages.each do |pkg|
  package pkg
end

template "/etc/ssh/sshd_config" do
  owner  "root"
  group  "root"
  mode   0644
  source name
  notifies :reload, "service[ssh]", :immediately
end

service "ssh" do
  case node[:platform]
  when "centos","redhat","fedora","arch","scientific"
    service_name "sshd"
  else
    service_name "ssh"
  end
  supports value_for_platform(
    "debian" => { "default" => [ :restart, :reload, :status ] },
    "ubuntu" => {
      "8.04" => [ :restart, :reload ],
      "default" => [ :restart, :reload, :status ]
    },
    "centos" => { "default" => [ :restart, :reload, :status ] },
    "redhat" => { "default" => [ :restart, :reload, :status ] },
    "fedora" => { "default" => [ :restart, :reload, :status ] },
    "scientific" => { "default" => [ :restart, :reload, :status ] },
    "arch" => { "default" => [ :restart ] },
    "default" => { "default" => [:restart, :reload ] }
  )
  action [ :enable, :start ]
end
