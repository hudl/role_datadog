#
# Cookbook Name:: datadog-cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

encrypted = Chef::EncryptedDataBagItem.load('datadog', 'datadog-encrypted')

node.default['datadog']['api_key'] = encrypted['api_key']
node.default['datadog']['application_key'] = encrypted['application_key']

include_recipe 'datadog::dd-agent'
include_recipe 'datadog::dd-handler'
