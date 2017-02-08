default['ntpdate']['use_ntp_config']    = 'no'
default['ntpdate']['config_folder']     = '/etc/default'
default['ntpdate']['config_file']       = 'ntpdate'
default['ntpdate']['ntp_servers']       = %w(pool.ntp.org)
default['ntpdate']['ntp_options']       = nil
default['ntpdate']['package_name']      = %w(ntpdate)
default['ntpdate']['crontab']['minute']  = '0'
default['ntpdate']['crontab']['hour']    = '5'
default['ntpdate']['crontab']['day']     = '*'
default['ntpdate']['crontab']['month']   = '*'
default['ntpdate']['crontab']['weekday'] = '*'
default['ntpdate']['crontab']['command'] = '/usr/sbin/ntpdate-debian > /dev/null'
default['ntpdate']['crontab']['user']    = 'root'
default['ntpdate']['crontab']['mailto']  = 'root'
default['ntpdate']['crontab']['path']    = %w( /usr/local/bin
                                            /usr/local/sbin
                                            /usr/bin
                                            /usr/sbin
                                            /bin
                                            /sbin )
default['ntpdate']['crontab']['home']    = '/root'
default['ntpdate']['crontab']['shell']   = '/bin/bash'
default['ntpdate']['crontab']['comment'] = 'Please change me!'
default['ntpdate']['crontab']['env']     = nil
default['ntpdate']['crontab_file']      = 'ntpdate'
default['ntpdate']['ntp_pkg_remove']    = true
default['ntpdate']['ntp_pkg_name']      = 'ntp'
default['ntpdate']['enable']            = true