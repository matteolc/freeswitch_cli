# frozen_string_literal: true
require 'active_support/configurable'

module FreeswitchCli
  include ActiveSupport::Configurable

  config.instance_eval do
    self.freeswitch_host_address = '81.29.150.203'
    self.freeswitch_host_ssh_secret = '0a92c6e23d7aecdd'
    self.freeswitch_host_ssh_port = 22
    self.freeswitch_host_ssh_user = 'root'

    # If param_name was given as a callable object, call it when returning
    def param_name
      self[:param_name].respond_to?(:call) ? self[:param_name].call : self[:param_name]
    end
  end
end