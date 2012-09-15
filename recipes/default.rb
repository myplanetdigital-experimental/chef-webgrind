include_recipe "git"
include_recipe "apache2"
include_recipe "xdebug"

git "/var/www/webgrind" do
  repository "https://github.com/jokkedk/webgrind.git"
  reference "master"
  action :sync
end

template "#{node['apache']['dir']}/conf.d/webgrind.conf" do
  source "webgrind.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, "service[apache2]"
end
