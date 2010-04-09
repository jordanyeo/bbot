class RsvpController < ApplicationController
  layout "default"
  def index
    
  end
  
  def build
    last_name = params[:last_name].strip.downcase
    keyword = params[:keyword].strip.downcase
    
    redirect_to(rsvp_url(last_name,keyword))
  end
  
  def edit
    last_name = params[:last_name].strip.downcase
    keyword = params[:keyword].strip.downcase
    
    @invitation = Invitation.find_for_last_name_and_keyword(last_name,keyword)
  end
  
  def update
    @invitation = Invitation.find(params[:id])
    
    if @invitation.update_attributes(params[:invitation])
      redirect_to thanks_url
    end
  end
  
  def yes
    @guest = Guest.find(params[:guest][:id])
    respond_to do |format|
      if @guest.update_attributes(:rsvp => true)
       format.js
      end 
    end
  end
  
  def no
    @guest = Guest.find(params[:guest][:id])
    respond_to do |format|
      if @guest.update_attributes(:rsvp => false)
       format.js
      end 
    end
  end
end
