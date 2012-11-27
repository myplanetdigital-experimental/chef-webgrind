include_recipe "git"
include_recipe "xdebug"

git "#{node['webgrind']['install_path']}" do
  repository "https://github.com/jokkedk/webgrind.git"
  reference "master"
  action :sync
end

template "#{node['webgrind']['install_path']}/config.php" do
  source "config.php.erb"
  mode "0600"
end

if node['webgrind']['webserver'] == "apache2"
  include_recipe "webgrind::apache2"
end