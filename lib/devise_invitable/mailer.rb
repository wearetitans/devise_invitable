module DeviseInvitable
  module Mailer
    
    # Deliver an invitation email
    def invitation(record, template)
      initialize_from_record(record)
      puts "I just got called"
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
