require 'net/ssh'
require 'net/sftp'

module FreeswitchCli

    module Network

        extend self

        HOST = {
            address: FreeswitchCli.config.freeswitch_host_address,
            user: FreeswitchCli.config.freeswitch_host_ssh_user,
            password: FreeswitchCli.config.freeswitch_host_ssh_secret,
            port: FreeswitchCli.config.freeswitch_host_ssh_port
        }
        
        def ssh
            begin
                Net::SSH.start(HOST[:address], 
                               HOST[:user], 
                               password: HOST[:password], 
                               port: HOST[:port])
            rescue
                "SSH Connection Error"
            end
        end  
                                          
        def upload_file(file, destination)	  
            Net::SFTP.start(HOST[:address], 
                            HOST[:user], 
                            password: HOST[:password], 
                            port: HOST[:port]) do |sftp|
                sftp.upload!(file, destination)
            end 	
        end
        
        def download_file(file, destination)	  
            Net::SFTP.start(HOST[:address], 
                            HOST[:user], 
                            password: HOST[:password], 
                            port: HOST[:port]) do |sftp|
                sftp.download!(file, destination)
            end 	
        end    
        
        def remove_file(file)
            Net::SFTP.start(HOST[:address], 
                            HOST[:user], 
                            password: HOST[:password], 
                            port: HOST[:port]) do |sftp|
                sftp.remove(file)
            end    	
        end  
        
    end
    
end