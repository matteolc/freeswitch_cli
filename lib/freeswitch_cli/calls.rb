module FreeswitchCli
    module Calls

        extend self
          
        def active
            Network.ssh.exec!("#{FreeswitchCli::FS_CLI} 'show calls'").split("\n") 
        end
      
        def active_by_tag(calltag)     
            count=0
            active_calls.each do |i| count+=1 if i.include?(calltag) end   
            count
        end

    end
end