#
# Cookbook Name:: sabnzbd
# Attributes:: default
#

default["sabnzbd"]["user"] = 'sabnzbd'
default["sabnzbd"]["group"] = 'sabnzbd'

default["sabnzbd"]["directories"]["install"] = '/opt/sabnzbd'
default["sabnzbd"]["directories"]["logs"] = '/var/log/sabnzbd'
default["sabnzbd"]["directories"]["config"] = '/etc/sabnzbd'

default["sabnzbd"]["host"] = '0.0.0.0'
default["sabnzbd"]["port"] = '6000'

default["sabnzbd"]["git"]["url"] = "https://github.com/sabnzbd/sabnzbd.git"
default["sabnzbd"]["git"]["revision"] = "de86ba7496026d933d58726dd00eb8292a11f8c4" #0.17.17
