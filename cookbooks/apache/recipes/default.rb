#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#install apache 
package 'apache2' do
	package_name 'httpd'
	action :install
end
# start and enable the httpd service
service 'appache2' do
	service_name 'httpd'
	action [:start, :enable]
end
