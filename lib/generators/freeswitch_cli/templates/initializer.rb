FreeswitchCli.configure do |config|
  
    config.freeswitch_host_address = '<%= freeswitch_host_address %>'
    config.freeswitch_host_ssh_secret = '<%= freeswitch_host_ssh_secret %>'
    config.freeswitch_host_ssh_port = '<%= freeswitch_host_ssh_port %>'
    config.freeswitch_host_ssh_user = '<%= freeswitch_host_ssh_user %>'
    
end