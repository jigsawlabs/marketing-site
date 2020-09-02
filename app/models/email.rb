class Email < ApplicationRecord
  API_KEY = 'cfa11a058136d27587e5f9e99e0d9d51-7cd1ac2b-f698c665'
  DOMAIN_NAME = 'email.jigsawlabs.io'


  def send_simple_message
    RestClient.post("https://api:#{API_KEY}"\
                    "@api.mailgun.net/v3/#{DOMAIN_NAME}/messages",
                    :from => "jeff <jeff@#{DOMAIN_NAME}>",
                    :to => "#{self.to}, #{self.to}",
                    :subject => self.welcome_subject,
                    :engine => 'handlebars',
                    :"v:first_name" => self.first_name,
                    :template => "application_response")
  end

  def welcome_subject
    "Got your application #{self.first_name} :) Next steps."
  end

  def text
    "Thanks for applying to"

  end
end
