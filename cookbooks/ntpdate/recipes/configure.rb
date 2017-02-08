action = node['ntpdate']['enable'] ? 'create' : 'delete'

template node['ntpdate']['config_file'] do
  path "#{node['ntpdate']['config_folder']}/#{node['ntpdate']['config_file']}"
  source "#{node['ntpdate']['config_file']}.erb"
  owner 'root'
  group 'root'
  mode '0644'
  variables ({
    :ntp_servers => node['ntpdate']['ntp_servers'].join(" "),
    :ntp_options => node['ntpdate']['ntp_options']
  })
  action action
end

cron_d node['ntpdate']['crontab_file'] do
  action action
  minute      node['ntpdate']['crontab']['minute']
  hour        node['ntpdate']['crontab']['hour']
  day         node['ntpdate']['crontab']['day']
  month       node['ntpdate']['crontab']['month']
  weekday     node['ntpdate']['crontab']['weekday']
  command     node['ntpdate']['crontab']['command']
  user        node['ntpdate']['crontab']['user']
  mailto      node['ntpdate']['crontab']['mailto']
  path        node['ntpdate']['crontab']['path'].join(":")
  home        node['ntpdate']['crontab']['home_folder']
  shell       node['ntpdate']['crontab']['shell']
  environment node['ntpdate']['crontab']['env']
  comment     node['ntpdate']['crontab']['comment']
end