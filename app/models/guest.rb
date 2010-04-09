class Guest < ActiveRecord::Base
  belongs_to :invitation
  
  named_scope :rsvp_yes, :conditions => {:rsvp => true}
  named_scope :ordered_by_last_name, :order => "last_name ASC"
  
  after_update :rsvpd_invitation
  
  def name
    first_name + ' ' + last_name
  end
  
  def rsvp_friendly
    if self.rsvp == true
      'YES'
    else
      if self.rsvp == false
        'NO :('
      else
        'UNKNOWN'
      end
    end
  end
  
  private
  
  def rsvpd_invitation
    @invitation = Invitation.find(self.invitation_id)
    @invitation.update_attribute(:rsvpd, true)
  end
end
