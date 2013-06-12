# directory "/var/www/#{node['web_app']['svn_svr_dest']}" do
#   mode 0755
#   action :create
# end
# directory "/var/www/#{node['web_app']['svn_svr_dest']}/shared" do
#   mode 0755
#   action :create
# end
subversion "/var/www/#{node['web_app']['svn_svr_dest']}" do
  repository node['web_app']['svn_url']
  revision "HEAD"
  user "root"
  #revision node['web_app']['svn_revision']
  svn_username = node['web_app']['svn_user']
  svn_password = node['web_app']['svn_pass']
  destination "/var/www/#{node['web_app']['svn_svr_dest']}"
  action node['web_app']['svn_action'] 
end

# deploy "/var/www/#{node['web_app']['svn_svr_dest']}" do
#   repository node['web_app']['svn_url']
#   svn_username = node['web_app']['svn_user']
#   svn_password = node['web_app']['svn_pass']
# #  migrate false
# #   purge_before_symlink %w{one two folder/three}
# #   create_dirs_before_symlink []
# #   symlinks(
# #     "one"   => "one",
# #     "two"   => "two",
# #     "three" => "folder/three"
# #   )
# #   before_restart do
# #     # some Ruby code
# #   end
# #   notifies :restart, "service[foo]"
# #   notifies :restart, "service[bar]"
#   action :deploy
#   scm_provider Chef::Provider::Subversion
# end