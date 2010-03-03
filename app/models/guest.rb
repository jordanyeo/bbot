class Guest < ActiveRecord::Base
  belongs_to :invitation
  
  def name
    first_name + ' ' + last_name
  end
end
