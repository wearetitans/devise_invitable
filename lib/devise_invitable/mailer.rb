module DeviseInvitable
  module Mailer
    
    # Deliver an invitation email
    def invitation(record, action)
      initialize_from_record(record)
      
      @template = action
      mail  :subject => translate(devise_mapping, action), :from => mailer_sender(devise_mapping), :to => resource.email, :template_path => template_paths
    end
  end
end
