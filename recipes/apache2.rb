include_recipe "apache2"

template "#{node['apache']['dir']}/sites-available/webgrind" do
  source "webgrind.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end

apache_site "webgrind"