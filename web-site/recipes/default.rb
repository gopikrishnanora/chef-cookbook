#
# Cookbook:: web-site
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
# Install the httpd package
# yum -y install httpd
package 'httpd'

# start the httpd service
# systemctl start httpd
service 'httpd' do
action [:enable, :start]
end
# Create an index page
# vi /var/www/html/index.html
cookbook_file '/var/www/html/index.html' do
source 'index.html'
end
