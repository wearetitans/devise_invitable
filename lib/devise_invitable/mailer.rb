module DeviseInvitable
  module Mailer
    
    # Deliver an invitation email
    def invitation(record, action)
      initialize_from_record(record)
      mail {
        :subject       => translate(devise_mapping, action),
        :from          => mailer_sender(devise_mapping),
        :to            => resource.email,
        :template_path => template_paths,
        :template      => action
      }
    end
  end
end
