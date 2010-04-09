class DashboardController < ApplicationController
  layout "admin"
  before_filter :verify_access
  
  def index
    @total_guests = Guest.all
    @total_invitations = Invitation.all
    @rsvpd_invitations = Invitation.rsvpd
    @yes_guests = Guest.rsvp_yes
  end
end