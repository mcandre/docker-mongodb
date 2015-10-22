#
# Cookbook Name:: cookbook
# Recipe:: default
#
# Copyright (c) 2015 Andrew Pennebaker

include_recipe 'mongodb'

mongodb_instance 'mongodb' do
  version '2.4.14'
end

service 'mongodb' do
  supports :status => true
  action [:disable, :stop]
end
