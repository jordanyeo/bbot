ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "jordanandbecca.com",
  :authentication => :plain,
  :user_name => "rsvp@jordanandbecca.com",
  :password => EMAIL_PASSWORD
}