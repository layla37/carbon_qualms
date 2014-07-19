class SinsController < ApplicationController

	# TODO this is a quick hack but I need to figure out how to 
	# deal with the cookies and the secret token thing.
	skip_before_action :verify_authenticity_token

	def index
		@sins = Sin.all
	end

	def create
		b = Sin.new
		b.description = params["description"]
		b.footprint = params["footprint"]
		b.save
		@sins = Sin.all
	end

	def show
  	end

  	def new
  	end

    def edit
    	@id = params["id"]
    	@sin = Sin.find(@id)
    	
  	end

  	def update
  	end

  	def destroy
  	end

end
