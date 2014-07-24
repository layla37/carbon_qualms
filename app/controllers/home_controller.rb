class HomeController < ApplicationController
	
	  def index
	 	@sins = Sin.all
	  end

	  def compute_penance
	  	@sin = Sin.find(params[:id]) 

	  	#do stuff and create a @penances array
	  end

end
