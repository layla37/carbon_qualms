class PenancesController < ApplicationController

	# TODO - Need to move name/PW to a config file
	http_basic_authenticate_with :name => "layla", :password => "spaghetti"
	
	def index
		@penances = Penance.all	
	end

	def new
		@penance = Penance.new
	end

	def create
		@penance = Penance.new(penance_params)
		@penance.save
		@penances = Penance.all	
	end

	def show
		@penance = Penance.find(params[:id]) 
	end

	def edit
    	@penance = Penance.find(params[:id])   	
  	end

  	def update
  		@penance = Penance.find(params[:id])    
 
    	if @penance.update(penance_params)
      		redirect_to @penance
    	else
      	render 'edit'
    	end
  	end

  	def destroy
    	@penance = Penance.find(params[:id])
    	@penance.destroy
   
    	redirect_to root_path
  	end

	private
	  def penance_params
	    params.require(:penance).permit(:description, :footprint)
	  end

end
