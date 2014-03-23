#
# Cookbook Name:: sabnzbd
# Recipe:: default
#

include_recipe "bluepill"

package "python-cheetah"
package "python-yenc"
package "python-openssl"
package "par2"
package "unrar"
package "unzip"

# Set up sabnzbd user
user node['sabnzbd']['user'] do
  system true
end

# Create directories
app_dirs = [
  "home/#{node['sabnzbd']['user']}",
  "#{node['sabnzbd']['install_dir']}",
  "#{node['sabnzbd']['log_dir']}",
  "#{node['sabnzbd']['config_dir']}"
]

app_dirs.each do |x|
  directory x do
    mode 0755
    owner node['sabnzbd']['user']
    group node['sabnzbd']['group']
    recursive true
  end
end

# Checkout sabnzbd
git node['sabnzbd']['install_dir'] do
  repository node['sabnzbd']['git']['url']
  reference node['sabnzbd']['git']['tag']
  action :sync
  user node['sabnzbd']['user']
  group node['sabnzbd']['group']
end

# Set up daemon with bluepill
template "#{node['bluepill']['conf_dir']}/sabnzbd.pill" do
  source "sabnzbd.pill.erb"
  mode 0644
end

bluepill_service "sabnzbd" do
  action [:enable, :load, :start]
end
