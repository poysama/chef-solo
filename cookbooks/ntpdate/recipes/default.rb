#
# Cookbook Name:: ntpdate
# Recipe:: default
#
# Copyright 2015, Ivan Golman	
#

include_recipe 'ntpdate::install'
include_recipe 'ntpdate::configure'
