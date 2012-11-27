include_recipe "git"
include_recipe "xdebug"

git "#{node['webgrind']['install_path']}" do
  repository "https://github.com/jokkedk/webgrind.git"
  reference "master"
  action :sync
end

::Chef::Resource::Template.send(:include, Webgrind::Helpers)
template "#{node['webgrind']['install_path']}/config.php" do
  source "config.php.erb"
  variables(:settings => node['webgrind']['config'])
  mode "0600"
end

if node['webgrind']['webserver'] == "apache2"
  include_recipe "webgrind::apache2"
end
