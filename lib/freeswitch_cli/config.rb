# frozen_string_literal: true
require 'active_support/configurable'

module FreeswitchCli

  class Config

    attr_accessor :freeswitch_host_address, 
                  :freeswitch_host_ssh_secret, 
                  :freeswitch_host_ssh_port,
                  :freeswitch_host_ssh_user
    
        def initialize
          @freeswitch_host_address = nil
          @freeswitch_host_ssh_secret = nil
          @freeswitch_host_ssh_port = nil
          @freeswitch_host_ssh_user = nil
        end
  end
  
end