class SinsController < ApplicationController
	
	# TODO this is a quick hack but I need to figure out how to 
	# deal with the cookies and the secret token thing.
	skip_before_action :verify_authenticity_token

	def create
		b = Sin.new
		b.description = params["description"]
		b.footprint = params["footprint"]
		b.save
		@sins = Sin.all
	end

end
