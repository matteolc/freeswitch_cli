module FreeswitchCli
    module Gateways

        extend self
           
        def create(gateway, address)
            File.open("tmp/peer.xml",'w+'){ |f| f.write(Template.render("peer.xml", { gateway: gateway, address: address })) }
            Network.upload_file(File.expand_path("peer.xml", "tmp"), "/opt/conf/peers/#{gateway}.xml")
            restart_all
        end 
      
        def destroy(gateway)
            Network.remove_file("/opt/conf/peers/#{gateway}.xml")
            restart_all
        end       

        def restart(gateway) 
            Network.ssh.exec!("#{FreeswitchCli::FS_CLI} 'sofia profile sbc killgw #{gateway}'") 
        end

        def restart_all
            Network.ssh.exec!("#{FreeswitchCli::FS_CLI} 'sofia profile sbc restart'") 
        end      
        
        def reload_all
            Network.ssh.exec!("#{FreeswitchCli::FS_CLI} 'sofia profile sbc rescan reloadxml'") 
        end
            
        def reload(gateway)
            restart(gateway)
            reload_all
        end    
         
    end
end