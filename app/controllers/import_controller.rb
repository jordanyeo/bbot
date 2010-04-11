class ImportController < ApplicationController
  require 'csv'
  layout "admin"
  before_filter :verify_access
  
  def index

  end
  
  def csv_import 
    @parsed_file=CSV::Reader.parse(params[:invitation][:file])
    n=0
    
    ActiveRecord::Base.transaction do
      @parsed_file.each do |row|
        @invitation = Invitation.create(:recipient => row[1], :last_name => row[4], :keyword => row[5], :address1 => row[6], :city => row[7], :province => row[9], :postal_code => row[10])
        n=n+1
      end
    end
    flash[:notice]="CSV Import Successful, #{n} invitations have been parsed"
    render :template => "import/results"
  end
end