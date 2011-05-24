module DeviseInvitable
  module Mailer
    
    # Deliver an invitation email
    def invitation(record, template)
      setup_mail(record, template)
    end
  end
end
