class ApplicationController < ActionController::Base
  helper :all 
  protect_from_forgery
  layout 'work'

  protected
  def load_booka
    @booka = Booka.get
  end

end
