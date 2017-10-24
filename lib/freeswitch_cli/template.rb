module FreeswitchCli
    module Template

        extend self
        
        def render(partial, assigns = {})
            ActionView::Base.new(ActionController::Base.view_paths, 
                                assigns).render(partial: "freeswitch_cli/#{partial}")
        end 
    end
end