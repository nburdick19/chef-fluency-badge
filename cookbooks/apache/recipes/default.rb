#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#set install package name for each platform family
if node['platfrom_family'] == 'rhel'
	package = "httpd"
elsif node['platform_family'] == 'debian'
	package = 'apache2'
end
#install apache
package 'apache2' do
	package_name package
	action :install
end

# start and enable the httpd service
service 'appache2' do
	service_name 'httpd'
	action [:start, :enable]
end

