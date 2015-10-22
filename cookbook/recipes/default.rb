#
# Cookbook Name:: cookbook
# Recipe:: default
#
# Copyright (c) 2015 Andrew Pennebaker

include_recipe 'mongodb'

mongodb_instance 'mongodb' do
  version '2.2.7'
end

service 'mongodb' do
  supports :status => true
  action [:disable, :stop]
end
