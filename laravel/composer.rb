#
# Author::  RiotCode
# Cookbook Name:: laravel
# Recipe:: composer
#
# Copyright 2009-2011, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node[:deploy].each do |application, deploy|

	execute "composer install" do
	  command "php composer.phar install && touch /var/log/.php_composer_installed"
	  creates "/var/log/.php_composer_installed"
	  action :run
	end
	
end

# node[:deploy].each do |application, deploy|
# 
#   script "install_composer" do
#     interpreter "bash"
#     user "root"
#     cwd "#{deploy[:deploy_to]}/current"
#     code <<-EOH
#     curl -s https://getcomposer.org/installer | php
#     php composer.phar install
#     EOH
#   end
#   
# end
