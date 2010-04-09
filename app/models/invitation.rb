class Invitation < ActiveRecord::Base
  has_many :guests
  named_scope :rsvpd, :conditions => {:rsvpd => true}
  
  def self.find_for_last_name_and_keyword(last_name,keyword)  
    Invitation.find(:first, :conditions => ['last_name = ? AND keyword = ?', last_name, keyword])
  end
end
