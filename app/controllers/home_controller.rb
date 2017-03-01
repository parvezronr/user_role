class HomeController < ApplicationController
  
  def index
  end

  def hide_role
  	@roles = Role.where(:stutus=> false)
  end
end