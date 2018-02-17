module FreeswitchCli
    module Acl

        extend self
           
        def create(networks)
            File.open("tmp/acl.conf.xml",'w+'){ |f| f.write(Template.render("acl.conf.xml", {networks: networks})) }
            Network.upload_file(File.expand_path("acl.conf.xml", "tmp"), "/opt/conf/mod/acl.conf.xml")
            reload
        end
      
        def reload
            Network.ssh.exec!("#{FreeswitchCli::FS_CLI} reloadacl") 
        end   
         
    end
end