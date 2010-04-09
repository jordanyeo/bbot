# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def verify_access
    authenticate_or_request_with_http_basic("Administration") do |username, password|
      username == "wedding" && password == HTTP_AUTH_PASSWORD
    end
  end
end
