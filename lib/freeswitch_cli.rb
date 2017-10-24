require 'freeswitch_cli/config'
require 'freeswitch_cli/engine'
require 'freeswitch_cli/version'
require 'freeswitch_cli/network'
require 'freeswitch_cli/status'
require 'freeswitch_cli/gateways'
require 'freeswitch_cli/acl'
require 'freeswitch_cli/calls'
require 'freeswitch_cli/hangup_causes'
require 'freeswitch_cli/template'

module FreeswitchCli

    extend self

    FS_CLI = "fs_cli -H #{config.freeswitch_host_address} -x ".freeze

end
