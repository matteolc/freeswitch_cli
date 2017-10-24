module FreeswitchCli
    module Status

        extend self
    
        def info
            Network.ssh.exec!("#{FreeswitchCli::FS_CLI} 'show status'").split("\n") 
        end  
  
        def sip
            Network.ssh.exec!("#{FreeswitchCli::FS_CLI} 'sofia status'").split("\n")
        end    

    end
end