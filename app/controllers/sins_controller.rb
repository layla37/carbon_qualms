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
    	id = params["id"]
    	@sin = Sin.find(id)
    	
  	end

  	def update
  		#get the id from params
  		id = params["id"]

  		#find the sin object with the id
  		@sin = Sin.find(id)

  		#get the footprint and description from the params object
  		@sin.update(description: params["description"])
		@sin.update(footprint: params["footprint"])

  		#update the sin object with the new footprint and description using the update method


  		redirect_to :controller => 'home', :action => 'index'
  	end

  	def destroy
  	end

end
