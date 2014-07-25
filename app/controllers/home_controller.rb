class HomeController < ApplicationController
	
	  def index
	 	@sins = Sin.all
	  end

	  def compute_penance
	  	@sin = Sin.find(params[:id]) 

	  	@penances = Penance.all

	  	@computed_penances = []
		
		sin_footprint = @sin.footprint

	  	@penances.each do |x|
	  		diff = (sin_footprint - x.footprint).abs	
	  		if (diff <= 1.5)
	  			@computed_penances << x
	  		end
	  	end


	  end

end




