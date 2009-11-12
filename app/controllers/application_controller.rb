class ApplicationController < ActionController::Base
  helper :all 
  protect_from_forgery
  layout 'work'

end
