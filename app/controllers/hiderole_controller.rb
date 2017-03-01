class HideroleController < ApplicationController
  def index
  	    @roles = Role.where(status: true)
  	    if params[:role_ids]
  	    	Role.where("id in (?)", params[:role_ids]).update_all(status: false)	
  	    end
  end
end
