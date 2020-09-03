class Email < ApplicationRecord
  API_KEY = 'cfa11a058136d27587e5f9e99e0d9d51-7cd1ac2b-f698c665'
  DOMAIN_NAME = 'email.jigsawlabs.io'


  def send_simple_message
    RestClient.post("https://api:#{API_KEY}"\
                    "@api.mailgun.net/v3/#{DOMAIN_NAME}/messages",
                    :from => "jeff <jeff@#{DOMAIN_NAME}>",
                    :to => "#{self.to}, #{self.to}",
                    :text => self.text,
                    :subject => self.welcome_subject,
                    :engine => 'handlebars',
                    :"v:first_name" => self.first_name,
                    :template => "application_response")
  end

  def welcome_subject
    "Got your application #{self.first_name}. Next steps."
  end

  def text
    """
    Hi Jeff!

So, as you might expect, the next step is for you to learn more about the program and for me to learn more about you. The best way to do this is with a friendly chat for about twenty-minutes.

On the call, we'll talk about the course curriculum and how a typical class operates. We'll also talk about your interest in coding or data science and your desired outcome from the course.

Schedule the phone call here.

All the best,

Jeff

P.S. Don't worry! On the call, I will not be assessing any technical skills. If you're interesting in pursuing the data science career course, we'll talk through what you can expect in the technical interview for that course.
"""
  end
end
