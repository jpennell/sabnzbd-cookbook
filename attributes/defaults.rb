#
# Cookbook Name:: sabnzbd
# Attributes:: default
#

default["sabnzbd"]["user"] = 'sabnzbd'
default["sabnzbd"]["group"] = 'sabnzbd'

default["sabnzbd"]["install_dir"] = '/opt/sabnzbd'
default["sabnzbd"]["log_dir"] = '/var/log/sabnzbd'
default["sabnzbd"]["config_dir"] = '/etc/sabnzbd'

default["sabnzbd"]["host"] = '0.0.0.0'
default["sabnzbd"]["port"] = '6000'

default["sabnzbd"]["git"]["url"] = "https://github.com/sabnzbd/sabnzbd.git"
default["sabnzbd"]["git"]["tag"] = "0.7.17"
