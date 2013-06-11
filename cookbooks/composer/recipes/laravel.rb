#
# Cookbook Name:: composer
# Recipe:: default
#
# Copyright 2012, Robert Allen
#
# @license    http://www.apache.org/licenses/LICENSE-2.0
#             Copyright [2012] [Robert Allen]
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

composer_project_packages "laravel/framework" do
	project_packpath node['composer']['lvpath']
	project_packfolder node['composer']['vlfolder']
	project_packversion node['composer']['vlversion']
	project_packuser node['composer']['lvuser']
	project_packgroup node['composer']['lvgroup']
	dev false
  	action [:install]
end
