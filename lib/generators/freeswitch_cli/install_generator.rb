require 'rails/generators'

module FreeswitchCli
  module Generators
    class InstallGenerator < Rails::Generators::Base
    	            
      source_root File.expand_path("../templates", __FILE__)
      
      argument :freeswitch_host_address, 
               type: :string, 
               default: 'localhost'               
      
      argument :freeswitch_host_ssh_secret, 
               type: :string, 
               default: '12345678' 

      argument :freeswitch_host_ssh_port, 
               type: :string,
               default: 22               

      argument :freeswitch_host_ssh_user, 
               type: :string, 
               default: 'root'               
      
      def copy_initializer_file
        template "initializer.rb", 
                 "config/initializers/freeswitch_cli.rb"
      end
          
      
    end
  end
end