class HomeController < ApplicationController
  
  include AuthenticatedSystem
  before_filter :login_required

  def index
    
  end

  def change_log
    
  end

end
