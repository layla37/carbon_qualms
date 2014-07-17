class HomeController < ApplicationController
	
	  def index
	 	@sins = Sin.all
	  end


end
