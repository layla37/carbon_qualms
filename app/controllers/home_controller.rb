class HomeController < ApplicationController
	
	  def index
	 	@bad_actions = BadAction.all
	  end


end
