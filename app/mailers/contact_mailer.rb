class ContactMailer < ActionMailer::Base
  default :from => 'tisciencia@gmail.com'

  def contact_message(contact)
    @contact = contact
    mail(:to => 'tisciencia@gmail.com', :subject => "[RAILS AWESOME BLOG] - #{@contact['subject']}")
  end
end