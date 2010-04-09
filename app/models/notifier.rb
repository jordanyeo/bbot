class Notifier < ActionMailer::Base
  
  def rsvp_notification(invitation)
    @subject    = "#{invitation.last_name} (#{invitation.recipient}) has RSVPD!"
    @recipients = 'averageyeo@gmail.com'
    @from       = 'rsvp@jordanandbecca.com'
    @sent_on    = Time.now
    body(:invitation => invitation)
    @content_type = "text/html"
  end
end
