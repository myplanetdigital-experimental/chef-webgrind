template "#{node['webgrind']['install_path']}/config.php" do
  source "config.php.erb"
  mode "0600"
end